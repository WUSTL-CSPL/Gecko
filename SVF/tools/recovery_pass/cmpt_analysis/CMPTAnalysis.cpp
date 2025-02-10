//===- HexboxAnalysis.cpp -------------------------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file performs analysis of the application to generate data that can
// be used to create a HexBox policy
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Module.h"
// #include "llvm/IR/CallSite.h"
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>

#include <fstream>
#include <iostream>
#include <map>
#include <string>
#include <vector>

#include "MemoryModel/PointerAnalysis.h"
#include "MemoryModel/PointerAnalysisImpl.h"
#include "SVF-FE/LLVMUtil.h"
#include "Util/Options.h"
#include "WPA/WPAPass.h"
#include "jsoncpp/json/json.h"  //From https://github.com/open-source-parsers/jsoncpp
#include "llvm/ADT/SmallSet.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Instrumentation.h"
#include "llvm/Transforms/Utils/Cloning.h"


std::vector<std::string> cmpt_root_funcs_names;


using namespace llvm;
using namespace std;
using namespace SVF;

#define DEBUG_TYPE "hexbox"

STATISTIC(NumFunctions, "Num Functions");

static cl::opt<std::string> HexboxAnalysisResults(
    "hexbox-analysis-results",
    cl::desc("JSON File to write analysis results to"), cl::init("-"),
    cl::value_desc("filename"));


static cl::opt<std::string> TaskNames(
    "task-names-file",
    cl::desc("TXT File containing the task names of the target bitcode"), cl::init("-"),
    cl::value_desc("filename"));

namespace {

struct HexboxAnalysis : public ModulePass {
    static char ID;
    HexboxAnalysis() : ModulePass(ID) {
        // initializeHexboxAnalysisPass(*PassRegistry::getPassRegistry());
    }

    Json::Value OutputJsonRoot;

    /******************************AddFunctionToJSON**************************
     * Adds the function to the Root Json value, along with all callers and
     * callees.  Also initializes the Globals object under the function
     *
     *************************************************************************/
    Json::Value &AddFunctionToJSON(Function &F) {
        std::string name = F.getName().str();
        Json::Value *Fnode;
        Json::Value *Attr;
        std::string str;
        // raw_string_ostream type_name_stream(str);
        // F.getType()->print(type_name_stream);

        Fnode = &OutputJsonRoot[name];
        Attr = &(*Fnode)["Attr"];

        (*Attr)["Type"] = "Function";
        (*Attr)["Address Taken"] = F.hasAddressTaken();
        (*Attr)["LLVM_Type"] = F.getName().str();

        for (const std::string &task_name : cmpt_root_funcs_names) {
            size_t found = name.find(task_name);
            if (found != std::string::npos) {
                errs() << "Found the task: " << task_name
                       << " has the function name : " << name << " \n";
                (*Attr)["TASK"] = task_name;
            }
        }

        // Adds Callers
        std::vector<Json::Value> Cons;
        for (User *U : F.users()) {
            if (Instruction *Inst = dyn_cast<Instruction>(U)) {
                if (CallBase *cs_ptr = dyn_cast<CallBase>(Inst)) {
                    CallBase &cs = *cs_ptr;
                    Function *caller = cs.getCaller();
                    add_connection(*Fnode, caller->getName().str(), "Caller");
                }
            }
        }

        // Adds Callees
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                // if ( CallSite cs = CallSite(&I) ){//yujie
                if (CallBase *cs_ptr = dyn_cast<CallBase>(&I)) {
                    CallBase &cs = *cs_ptr;

                    // if (cs){
                    Function *callee = cs.getCalledFunction();
                    if (callee) {
                        add_connection(*Fnode, callee->getName().str(),
                                       "Callee");

                    } else if (InlineAsm *IA = dyn_cast_or_null<InlineAsm>(
                                   cs.getCalledOperand())) {
                        add_connection(*Fnode, I.getName().str(), "Asm Callee");

                    }  else if (ConstantExpr *ConstEx =
                                   dyn_cast_or_null<ConstantExpr>(
                                       cs.getCalledOperand())) {
                        // if (Instruction *Inst = ConstEx->getAsInstruction()) {
                        //     errs() << " \n"; 
                        // } else {
                            errs() << "Place Holder \n"; 
                        // }
                      /*  if (CastInst *CI = dyn_cast_or_null<CastInst>(Inst)) {
                            if (Function *c =
                                    dyn_cast<Function>(Inst->getOperand(0))) {
                                errs() << "The constant function is : " << c->getName().str() << "\n";
                                // add_connection(*Fnode, c->getName().str(), "Callee");
                            } else {
                                errs() << "Unhandled Cast \n";
                            }
                        } else {
                            errs() << "Unhandled Constant \n";
                        }*/
                    }  else {
                        add_indirect_calls(*Fnode, F, I, cs);
                    }
                }

                else if (LoadInst *loadInst = dyn_cast<LoadInst>(&I)) {
                    std::set<Value *> tarset;

                    getLoadTarget(loadInst, tarset);

                } else if (StoreInst *strInst = dyn_cast<StoreInst>(&I)) {
                    std::set<Value *> tarset;

                    getStoreTarget(strInst, tarset);
                }

            }
        }

        return (*Fnode);
    }

    void add_connection(Json::Value &Fnode, std::string name,
                        std::string type) {
        Json::Value *Connections;
        Connections = &Fnode["Connections"][name];
        (*Connections)["Type"] = type;
        (*Connections)["Count"] = (*Connections)["Count"].asUInt64() + 1;
    }

    bool TypesEqual(Type *T1, Type *T2, unsigned depth = 0) {
        if (T1 == T2) {
            return true;
        }
        if (depth > 10) {
            // If we haven't found  a difference this deep just assume they are
            // the same type. We need to overapproximate (i.e. say more things
            // are equal than really are) so return true
            return true;
        }
        if (PointerType *Pty1 = dyn_cast<PointerType>(T1)) {
            if (PointerType *Pty2 = dyn_cast<PointerType>(T2)) {
                return TypesEqual(Pty1->getPointerElementType(),
                                  Pty2->getPointerElementType(), depth + 1);
            } else {
                return false;
            }
        }
        if (FunctionType *FTy1 = dyn_cast<FunctionType>(T1)) {
            if (FunctionType *FTy2 = dyn_cast<FunctionType>(T2)) {
                if (FTy1->getNumParams() != FTy2->getNumParams()) {
                    return false;
                }
                if (!TypesEqual(FTy1->getReturnType(), FTy2->getReturnType(),
                                depth + 1)) {
                    return false;
                }
                for (unsigned i = 0; i < FTy1->getNumParams(); i++) {
                    if (FTy1->getParamType(i) == FTy1 &&
                        FTy2->getParamType(i) == FTy2) {
                        continue;
                    } else if (FTy1->getParamType(i) != FTy1 &&
                               FTy2->getParamType(i) != FTy2) {
                        // FTy1->getParamType(i)->dump();
                        // FTy2->getParamType(i)->dump();
                        if (!TypesEqual(FTy1->getParamType(i),
                                        FTy2->getParamType(i), depth + 1)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
                return true;

            } else {
                return false;
            }
        }
        if (StructType *STy1 = dyn_cast<StructType>(T1)) {
            if (StructType *STy2 = dyn_cast<StructType>(T2)) {
                if (STy2->getNumElements() != STy1->getNumElements()) {
                    return false;
                }
                if (STy1->hasName() && STy2->hasName()) {
                    if (STy1->getName().startswith(STy2->getName()) ||
                        STy2->getName().startswith(STy1->getName())) {
                        return true;
                    }
                }
                return false;

            } else {
                return false;
            }
        }
        return false;
    }
    int getInstPos(Instruction *inst) {
        if (!inst) {
            return -1;
        }
        Function *F = inst->getFunction();
        int pos = 0;
        for (BasicBlock &BB : *F) {
            for (Instruction &I : BB) {
                if (&I == inst) {
                    return pos;
                }
                pos++;
            }
        }
        return pos;
    }


    std::string getInstName(const Instruction *inst) {
        return inst->getName().str();
    }

    void getLoadTarget(LoadInst *inst, std::set<Value *> tar) {
        Function *F = inst->getFunction();
        Value *pointer = inst->getPointerOperand();
        
        Json::Value *memoryop =
            &OutputJsonRoot[F->getName().str() + ";" + inst->getName().str()];
        (*memoryop)["Attr"]["Type"] = "Load";
        (*memoryop)["Attr"]["Function"] = inst->getFunction()->getName().str();

    // Disable points-to analysis for efficiency
/*
        if (!pag->hasValueNode(pointer)) {
            return;
        }

        NodeID ptr = pag->getValueNode(pointer);
        const PointsTo &ptset = pta->getPts(ptr);

        for (PointsTo::iterator it = ptset.begin(), eit = ptset.end();
             it != eit; ++it) {
            SVFVar *node = pag->getGNode(*it);
            if (!node->hasValue()) {
                continue;
            }

            const Value *vv = node->getValue();

            std::string str;
            std::string instlabel;
            // if( const Instruction* _vinst=dyn_cast<Instruction>(vv)){
            //         instlabel=std::to_string(getInstPos((Instruction*)_vinst));
            // }
            raw_string_ostream inst_name(str);

            vv->print(inst_name);
            if (str.find(" = alloca ") != std::string::npos) {
                const Instruction *vinst = dyn_cast<Instruction>(vv);
                if (vinst && vinst->getFunction() != F) {
                    add_connection(*memoryop,
                                   vinst->getFunction()->getName().str() + ";" +
                                       getInstName(vinst),
                                   "CrossFunction Data");

                } else {
                    // add_connection(*memoryop,vinst->getFunction()->getName().str()+";"+str,"IntraFunction
                    // Data");
                }

            } else if (str.find(" global ") != std::string::npos) {
                add_connection(*memoryop, str, "Global Data");

            } else {
                if (const Instruction *vinst = dyn_cast<Instruction>(vv)) {
                    add_connection(*memoryop,
                                   vinst->getFunction()->getName().str() + ";" +
                                       getInstName(vinst),
                                   "Other Data");
                }
            }
            tar.insert((Value *)vv);
        }
*/
    }

    void getStoreTarget(StoreInst *inst, std::set<Value *> tar) {
        Function *F = inst->getFunction();
        Value *pointer = inst->getPointerOperand();

        // std::string inststr=std::to_string(getInstPos(inst));
        // raw_string_ostream headinst_name(inststr);
        //   inst->print(headinst_name);
        Json::Value *memoryop =
            &OutputJsonRoot[F->getName().str() + ";" + inst->getName().str()];
        (*memoryop)["Attr"]["Type"] = "Store";
        (*memoryop)["Attr"]["Function"] = inst->getFunction()->getName().str();

// Disable points-to analysis for efficiency
/*      
        if (!pag->hasValueNode(pointer)) {
            return;
        }
        NodeID ptr = pag->getValueNode(pointer);
        const PointsTo &ptset = pta->getPts(ptr);


        for (PointsTo::iterator it = ptset.begin(), eit = ptset.end();
             it != eit; ++it) {
            SVFVar *node = pag->getGNode(*it);
            if (!node->hasValue()) {
                continue;
            }

            const Value *vv = node->getValue();

            std::string str;
            std::string instlabel;
            // if( const Instruction* _vinst=dyn_cast<Instruction>(vv)){
            //         instlabel=std::to_string(getInstPos((Instruction*)_vinst));
            // }
            raw_string_ostream inst_name(str);

            vv->print(inst_name);

            if (str.find(" = alloca ") != std::string::npos) {
                const Instruction *vinst = dyn_cast<Instruction>(vv);

                if (vinst && vinst->getFunction() != F) {
                    add_connection(*memoryop,
                                   vinst->getFunction()->getName().str() + ";" +
                                       getInstName(vinst),
                                   "CrossFunction Data");

                } else {
                    // add_connection(*memoryop,vinst->getFunction()->getName().str()+";"+instlabel,"IntraFunction
                    // Data");
                }

            } else if (str.find(" global ") != std::string::npos) {
                add_connection(*memoryop, str, "Global Data");

            } else {
                if (const Instruction *vinst = dyn_cast<Instruction>(vv)) {
                    add_connection(*memoryop,
                                   vinst->getFunction()->getName().str() + ";" +
                                       getInstName(vinst),
                                   "Other Data");
                }
            }

            tar.insert((Value *)vv);
        }
*/
    }

    void getIndirectTargets(CallBase &cs, std::set<Function *> &tarFun) {
        
        LoadInst *loadInst = dyn_cast<LoadInst>(cs.getCalledOperand());

        if (loadInst) {
            Value *loadptr = loadInst->getPointerOperand();

            if (!pag->hasValueNode(loadInst)) {
                return;
            }
            NodeID ptr = pag->getValueNode(loadInst);

            const PointsTo &ptset = pta->getPts(ptr);

            for (PointsTo::iterator it = ptset.begin(), eit = ptset.end();
                 it != eit; ++it) {
                SVFVar *node = pag->getGNode(*it);
                if (!node->hasValue()) {
                    continue;
                }
                const Value *vv = node->getValue();
                const Function *callee = dyn_cast<Function>(vv);
                if (callee) {
                    tarFun.insert((Function *)callee);
                }
            }
        }
    }

    void add_indirect_calls(Json::Value &Fnode, Function &F, Instruction &I,
                            CallBase &cs) {
        // std::string str=std::to_string(getInstPos(&I));
        // raw_string_ostream callee_name(str);
        std::string str2;
        raw_string_ostream callee_type_str(str2);
        FunctionType *IndirectType;
        Json::Value *Indirect;
        // I.print(callee_name);
        Indirect = &OutputJsonRoot[F.getName().str() + ";" + I.getName().str()];
        (*Indirect)["Attr"]["Type"] = "Indirect";

        (*Indirect)["Attr"]["Function"] = I.getFunction()->getName().str();

        add_connection(Fnode, I.getName().str(), "Indirect Call Type");
        IndirectType = cs.getFunctionType();

        IndirectType->print(callee_type_str);

        (*Indirect)["Attr"]["LLVMType"] = callee_type_str.str();


// Disable SVF for effeciency
/*
        std::set<Function *> tarFun;

        getIndirectTargets(cs, tarFun);

        for (Function *Funct : tarFun) {
            add_connection(Fnode, Funct->getName().str(), "Indirect Call");

            add_connection(*Indirect, Funct->getName().str(), "Indirect Call");
        }
*/
    }
    static unsigned dd_class_id;

    class DataDependancy {
       public:
        SmallSet<Function *, 32> functions;

        DataDependancy(Value *v, Type *t, const DataLayout &DL,
                       unsigned ad = 0) {
            V = v;
            read = false;
            write = false;
            isArg = false;
            isParam = false;
            argNum = 0;
            ty = t;
            addr = ad;
            determineSize(DL);
            id = dd_class_id;
            dd_class_id++;
        }

        bool getRead() { return read; }

        bool getWrite() { return write; }

        void setIsArg(unsigned n) {
            isArg = true;
            argNum = n;
        }

        void setIsParam(unsigned n) {
            isParam = true;
            argNum = n;
        }
        void add_function(Function *F) { functions.insert(F); }

        unsigned getAddr() { return addr; }

        unsigned getSize() { return size; }

        void WriteNode(Json::Value &JsonNode) {
            std::stringstream ss;
            ss << ".Peripheral_" << id;
            Json::Value &ThisNode = JsonNode[ss.str()];
            errs() << "Writing Json Node: " << ss.str() << "\n";
            writeJsonAttributes(ThisNode["Attr"]);
            for (Function *F : functions) {
                ThisNode["Connections"][F->getName().data()]["Type"] =
                    "Peripheral";
            }
        }

        bool inside(unsigned value) {
            if (this->addr <= value && value < this->addr + this->size) {
                return true;
            }
            return false;
        }

        bool overlap(DataDependancy *DD) {
            if (inside(DD->getAddr()) || DD->inside(this->addr)) {
                return true;
            }
            return false;
        }

        void determineSize(const DataLayout &DL) {
            size = 0;
            if (ty) {
                if (PointerType *PT = dyn_cast<PointerType>(ty)) {
                    size = DL.getTypeAllocSize(PT->getElementType());
                } else {
                    size = DL.getTypeAllocSize(ty);
                }
            }
        }

        void writeJsonAttributes(Json::Value &Rnode) {
            std::string s;
            raw_string_ostream stream(s);

            if (addr) {
                Rnode["Type"] = "Peripheral";
                Rnode["Addr"] = addr;
            }
            if (V->hasName()) {
                Rnode["Name"] = V->getName().str();
            }
            if (ty) {
                ty->print(stream);
                Rnode["DataType"] = stream.str();
                Rnode["DataSize"] = size;
            }
            Rnode["Read"] = read;
            Rnode["Write"] = write;
            std::string st;
            raw_string_ostream ss(st);
            V->print(ss);
            Rnode["LLVM::Value"] = ss.str();
            Rnode["IsArg"] = isArg;
            Rnode["IsParam"] = isParam;
            Rnode["ArgNum"] = argNum;
        }
        void updateProperties(Value *v) {
            if (isa<LoadInst>(v)) {
                read = true;
            } else if (isa<StoreInst>(v)) {
                write = true;
            }
        }

        void determineAttributes(Value *v) {
            errs() << "Determining Attributes\n";
            // v->dump();
            if (Instruction *I = dyn_cast<Instruction>(v)) {
                errs() << "Adding Function ";
                errs().write_escaped(I->getFunction()->getName());
                errs() << "\n";
                functions.insert(I->getFunction());
                if (CallInst *CI = dyn_cast<CallInst>(v)) {
                    SmallSet<Function *, 32> Callees;
                    getPotentialCallees(CI, Callees);
                    for (Function *Callee : Callees) {
                        functions.insert(Callee);
                    }
                } else if (isa<LoadInst>(v)) {
                    read = true;
                } else if (isa<StoreInst>(v)) {
                    write = true;
                }
            } else {
                for (User *U : v->users()) {
                    determineAttributes(U);
                }
            }
        }

       private:
        unsigned id;
        Value *V;
        bool read;
        bool write;
        bool isArg;
        bool isParam;
        unsigned argNum;
        unsigned addr;
        unsigned size;
        Type *ty;
    };

    static void getPotentialCallees(CallInst *CI,
                                    SmallSet<Function *, 32> &Callees) {
        Function *Callee = CI->getCalledFunction();

        if (Callee) {
            Callees.insert(Callee);
        } else {
            for (auto &Fun : CI->getFunction()->getParent()->functions()) {
                if (Fun.getFunctionType() == CI->getFunctionType()) {
                    Callees.insert(&Fun);
                }
            }
        }
    }

    void getFunctionResources(Module *M) {
        DenseMap<Function *, DenseMap<Value *, DataDependancy *>> DependanceMap;

        SmallSet<Constant *, 32> PeripheralWorklist;
        SmallSet<Value *, 32> LocalWorklist;
        SmallSet<GlobalVariable *, 32> GlobalWorklist;

        for (Function &F : M->functions()) {
            if (F.getName().startswith("llvm.dbg.")) {
                continue;
            }

            AddFunctionToJSON(F);
        }
    }

    int initCmptPolicy() {
        errs() << "Initializing a CMPT policy \n";

        errs() << "The task name file is : " << TaskNames << " \n";
        
        std::ifstream func_name_file(TaskNames);

        if (!func_name_file) {
            std::cerr << "Failed to open the file." << std::endl;
            return 1;
        }

        std::string line;

        while (std::getline(func_name_file, line)) {
            cmpt_root_funcs_names.push_back(line);
        }

        func_name_file.close();

        // You can print the lines to verify
        for (const std::string &l : cmpt_root_funcs_names) {
            std::cout << l << std::endl;
        }

        return 0;
    }

    /**
     * @brief doInitialization
     * @param M
     * @return
     */
    PointerAnalysis *pta;
    SVFIR *pag;
    std::unique_ptr<llvm::Module> clonedModule;

    std::map<Value *, Value *> value_id_map;
    void construct_mapping(Module &M) {
        clonedModule = llvm::CloneModule(M);

        llvm::Module::iterator func = M.begin();
        llvm::Module::iterator _func = clonedModule->begin();
        for (; func != M.end() && _func != clonedModule->end();
             ++func, ++_func) {
            value_id_map[&*func] = &*_func;

            llvm::Function::iterator bb = func->begin();
            llvm::Function::iterator _bb = _func->begin();
            for (; bb != func->end() && _bb != _func->end(); ++bb, ++_bb) {
                value_id_map[&*bb] = &*_bb;
                llvm::BasicBlock::iterator instruction = bb->begin();
                llvm::BasicBlock::iterator _instruction = _bb->begin();
                for (; instruction != bb->end() && _instruction != _bb->end();
                     ++instruction, ++_instruction) {
                    value_id_map[&*instruction] = &*_instruction;
                }
            }
        }
    }
    void initialization(Module &M) {
        construct_mapping(M);

        int arg_num = 3;
        char **arg_value = new char *[4];
        char *arg0 = nullptr;
        char *arg1 = "-ander";
        char *arg2 = (char *)M.getModuleIdentifier().c_str();
        //  char * arg3="--dump-pag";
        arg_value[0] = arg0;
        arg_value[1] = arg1;
        arg_value[2] = arg2;
        // arg_value[3]=arg3;

        // cl::ParseCommandLineOptions(arg_num, arg_value,
                                    // "Whole Program Points-to Analysis\n");

        // std::vector<std::string> moduleNameVec;
        // std::string tmp(M.getModuleIdentifier());
        // moduleNameVec.push_back(tmp);

        // SVFModule *svfModule =
        //     LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(M);
        // svfModule->buildSymbolTableInfo();

        // WPAPass *wpa = new WPAPass();
        // // DDAPass *dda = new DDAPass();
        // wpa->runOnModule(svfModule);
        //  wpa->runOnModule(M);

        // SymbolTableInfo *symInfo = SymbolTableInfo::SymbolInfo();
        // SymbolTableInfo::ValueToIDMapTy valSymMap = symInfo->valSyms();

        // pta = wpa->getCurrentPta();
        // pag = pta->getPAG();
        // pta->dumpTopLevelPtsTo();

        // pag->dump("svfir_initial");
    }

    bool runOnModule(Module &M) override {
        // initialization(M);

        // errs() << "Hello Whale";

        if (HexboxAnalysisResults.compare("-") == 0) {
            return false;
        }

        // Load a guide for generate policy
        initCmptPolicy();

        errs() << "Going to handle global variables \n";

        for (GlobalVariable &GV : M.globals()) {

            // For debug
            // errs() << "Global variable name: " << GV.getName() << "\n";
            // if( GV.hasInitializer() && !GV.getName().startswith(".") ){
            if (!GV.getName().startswith(".")) {
                addFunctionUses(GV, &GV, M);
            } else {
                // errs() << "GV Has no Initializer:";
            }
        }

        errs() << "Going to AddFunctionToJSON \n";

        for (Function &F : M) {
            AddFunctionToJSON(F);
        }


        errs() << "Going to getFunctionResources \n";
        
        getFunctionResources(&M);


        if (HexboxAnalysisResults.compare("-") == 0) {
            return false;
        }

        errs() << "Going to Dummping the results to JSON file \n";
        
        
        std::ofstream jsonFile;
        jsonFile.open(HexboxAnalysisResults);
        jsonFile << OutputJsonRoot;
        jsonFile.close();

        return false;
    }

    void addFunctionUses(GlobalVariable &GV, Value *V, Module &M) {
        for (User *U : V->users()) {  // users of global variables
            Json::Value *Global;
            Function *F = nullptr;

            if (Instruction *I = dyn_cast<Instruction>(U)) {
                F = I->getFunction();
                Global = &OutputJsonRoot[GV.getName().str()];
                add_connection(*Global, F->getName().str(), "Data");
                (*Global)["Attr"]["Type"] = "Global";
                // Need type conversion otherwise it is ambigous
                (*Global)["Attr"]["Size"] =
                    Json::Value(static_cast<Json::UInt64>(
                        M.getDataLayout()
                            .getTypeAllocSize(GV.getType())
                            .getFixedSize()));
                // Don't know why you use 0 in the getMetadata() below but I've
                // tried a bunch of other options like
                // Metadata::DIGlobalVariableExpressionKind etc and always get
                // null

                // original commented codes
                // if ( DIGlobalVariableExpression * DI_GVE =
                // dyn_cast_or_null<DIGlobalVariableExpression>(GV.getMetadata(0))
                // ){
                //        (*Global)["Attr"]["Filename"] =
                //        DI_GVE->getVariable()->getFilename().str();
                // }

                // newly tested codes

                // starts commend
                DebugInfoFinder F;
                F.processModule(M);

                for (DICompileUnit *DIC : F.compile_units()) {
                    // Create our live global variable list.
                    bool GlobalVariableChange = false;
                    // for (DIGlobalVariable *DIG : DIC->getGlobalVariables()) {
                    for (DIGlobalVariableExpression *DIGExpr :
                         DIC->getGlobalVariables()) {
                        DIGlobalVariable *DIG = DIGExpr->getVariable();

                        // if(GV.getName().str() == DIG->getDisplayName()){
                        if (GV.getName().str() == DIG->getLinkageName() ||
                            GV.getName().str() == DIG->getDisplayName()) {
                            (*Global)["Attr"]["Filename"] =
                                DIG->getFile()->getFilename().str();

                            std::string filename =
                                DIG->getFile()->getFilename().str();
                            // AMI controller policy
                        }
                    }
                }
                // ends commend

            } else if (Constant *C = dyn_cast<Constant>(U)) {
                addFunctionUses(GV, C, M);
            } else {
                errs() << "Unknown Use";
                //  U->dump();
            }
        }
    }

    bool doFinalization(Module &M) override {
        if (HexboxAnalysisResults.compare("-") == 0) {
            return false;
        }

        std::ofstream jsonFile;
        jsonFile.open(HexboxAnalysisResults);
        jsonFile << OutputJsonRoot;
        jsonFile.close();

        return false;
    }

    // We don't modify the program, so we preserve all analyses.
    void getAnalysisUsage(AnalysisUsage &AU) const override {
        AU.setPreservesAll();
    }
};

}  // namespace

// unsigned HexboxAnalysis::dd_class_id =0;
char HexboxAnalysis::ID = 0;
unsigned HexboxAnalysis::dd_class_id = 0;
static llvm::RegisterPass<HexboxAnalysis> X("HexboxAnaysis",
                                            "HexboxAnaysis Pass",
                                            false /* Only looks at CFG */,
                                            false /* Analysis Pass */);

static llvm::RegisterStandardPasses Y(
    llvm::PassManagerBuilder::EP_EarlyAsPossible,
    [](const llvm::PassManagerBuilder &Builder,
       llvm::legacy::PassManagerBase &PM) { PM.add(new HexboxAnalysis()); });
