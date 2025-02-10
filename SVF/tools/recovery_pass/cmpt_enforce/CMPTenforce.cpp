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
#include "llvm/IR/DebugInfoMetadata.h"

#include <fstream>
#include <iostream>
#include <map>
#include <set>
#include <string>

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

using namespace llvm;

#define DEBUG_TYPE "hexbox"

STATISTIC(NumFunctions, "Num Functions");

static cl::opt<std::string> HexboxPolicy("hexbox-policy",
                                         cl::desc("JSON Defining the policy"),
                                         cl::init("-"),
                                         cl::value_desc("filename"));
namespace {

struct HexboxApplication : public ModulePass {
    static char ID;
    HexboxApplication() : ModulePass(ID) {
        // initializeHexboxAnalysisPass(*PassRegistry::getPassRegistry());
    }

    DenseMap<BasicBlock*, int> _BB2IDMap;
    Json::Value OutputJsonRoot;
    Json::Value PolicyRoot;

    int loadinst_count = 0, storeinst_count = 0;
    /******************************AddFunctionToJSON**************************
     * Adds the function to the Root Json value, along with all callers and
     * callees.  Also initializes the Globals object under the function
     *
     *************************************************************************/
    int getInstPos(Instruction* inst) {
        if (!inst) {
            return -1;
        }
        Function* F = inst->getFunction();
        int pos = 0;
        for (BasicBlock& BB : *F) {
            for (Instruction& I : BB) {
                if (&I == inst) {
                    return pos;
                }
                if (!F->getName().startswith("cspl_")) {
                    pos++;
                }
            }
        }
        return pos;
    }
    std::string getInstName(Instruction* inst) {
        std::string str;
        if (!inst) {
            return str;
        }
        // Function* F=inst->getFunction();
        raw_string_ostream headinst_name(str);

        inst->print(headinst_name);
        return headinst_name.str();
    }

    std::string getInstName(const Instruction* inst) {
        return getInstName((Instruction*)inst);
    }

    bool assignBasicBlockIDs(Module &M) {
        for(Function &F: M) {
            for (BasicBlock &BB: F) {
                errs() << "Assigning unique ID to basic blocks \n";
            }
        }
    }


    void instrument_cmpt_transfer(Function& Funct) {
        StringRef sectionName = Funct.getSection();
        llvm::Module* M = Funct.getParent();

        int transfer_count = 0;
        for (BasicBlock& BB : Funct) {
            for (Instruction& I : BB) {
                // if ( CallSite cs = CallSite(&I) ){//yujie
                if (CallBase* cs_ptr = dyn_cast<CallBase>(&I)) {
                    CallBase& cs = *cs_ptr;

                    // if (cs){
                    Function* callee = cs.getCalledFunction();

                    if (callee) {
                        if (callee->getSection() != sectionName) {
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_inter_cpt_transfer",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);

                            errs() << "Inter CMPT transfer created #" << transfer_count++ << "\n";

                        } else {
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_intra_cpt_transfer",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);
                        }
                        // add_connection(*Fnode,callee->getName().str(),"Callee");

                    } else {
                        // std::string str=std::to_string(getInstPos(&I));
                        std::string strname;
                        raw_string_ostream type_name_stream(strname);
                        I.print(type_name_stream);

                        if (PolicyRoot["Indirect Call Compart"].isMember(
                                I.getFunction()->getName().str() + ";" +
                                getInstName(&I))) {
                            if (PolicyRoot["Indirect Call Compart"]
                                          [I.getFunction()->getName().str() +
                                           ";" + getInstName(&I)]["Attr"] ==
                                "Inter") {
                                llvm::IRBuilder<> ib(&I);
                                llvm::FunctionCallee fnew =
                                    M->getOrInsertFunction(
                                        "cspl_inter_ind_call",
                                        llvm::Type::getVoidTy(M->getContext()));

                                ib.CreateCall(fnew);
                            } else {
                                llvm::IRBuilder<> ib(&I);
                                llvm::FunctionCallee fnew =
                                    M->getOrInsertFunction(
                                        "cspl_intra_ind_call",
                                        llvm::Type::getVoidTy(M->getContext()));

                                ib.CreateCall(fnew);
                            }
                        } else {
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_intra_ind_call",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);
                        }

                        // add_indirect_calls(*Fnode, F, I, cs);
                    }
                    // }
                }
            }
        }
    }
    void instrument_data_transfer(Function& Funct) {
        StringRef sectionName = Funct.getSection();
        llvm::Module* M = Funct.getParent();

        for (BasicBlock& BB : Funct) {
            for (Instruction& I : BB) {
                std::string mem_type;
                Value* pointer = nullptr;
                Type* operandType = nullptr;
                if (LoadInst* mem_ptr = dyn_cast<LoadInst>(&I)) {
                    mem_type = "Load";
                    pointer = mem_ptr->getPointerOperand();
                    operandType = pointer->getType();
                }
                if (StoreInst* mem_ptr = dyn_cast<StoreInst>(&I)) {
                    mem_type = "Store";
                    pointer = mem_ptr->getPointerOperand();
                    operandType = pointer->getType();
                }

                if (mem_type != "") {
                    bool isGlobal = false, isInter = false, isOther = false;
                    if (PolicyRoot[mem_type].isMember(
                            I.getFunction()->getName().str() + ";" +
                            getInstName(&I))) {
                        std::string attrstring =
                            PolicyRoot[mem_type]
                                      [I.getFunction()->getName().str() + ";" +
                                       getInstName(&I)]["Attr"]
                                          .asString();
                        if (attrstring.find("Other") != std::string::npos) {
                            isOther = true;
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_data_other",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);
                        }
                        if (attrstring.find("Global") != std::string::npos) {
                            isGlobal = true;
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_data_global",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);
                        }
                        if (attrstring.find("Inter") != std::string::npos) {
                            isInter = true;
                            llvm::IRBuilder<> ib(&I);
                            llvm::FunctionCallee fnew = M->getOrInsertFunction(
                                "cspl_data_inter",
                                llvm::Type::getVoidTy(M->getContext()));

                            ib.CreateCall(fnew);
                        }
                        if (isOther || isGlobal || isInter) {
                            DataLayout dataLayout(M);
                            uint64_t pointeeSize = dataLayout.getTypeAllocSize(
                                operandType->getPointerElementType());
                            Type* voidPointerType =
                                Type::getInt8PtrTy(M->getContext());
                            Instruction* nextInstruction = I.getNextNode();
                            if (nextInstruction) {
                                llvm::IRBuilder<> ib(nextInstruction);
                                Value* bitcastInst = ib.CreateBitCast(
                                    pointer, voidPointerType, "bitcast");
                                Type* intType =
                                    Type::getInt32Ty(M->getContext());
                                Type* voidType =
                                    Type::getVoidTy(M->getContext());

                                llvm::FunctionCallee fnew =
                                    M->getOrInsertFunction(
                                        "cspl_data_log", voidType,
                                        voidPointerType, intType, intType,
                                        intType);
                                llvm::Value* arg = llvm::ConstantInt::get(
                                    llvm::IntegerType::getInt32Ty(
                                        M->getContext()),
                                    pointeeSize);
                                llvm::Value* argType = nullptr;
                                llvm::Value* argID = nullptr;
                                if (mem_type == "Load") {
                                    argType = llvm::ConstantInt::get(
                                        llvm::IntegerType::getInt32Ty(
                                            M->getContext()),
                                        0);

                                    argID = llvm::ConstantInt::get(
                                        llvm::IntegerType::getInt32Ty(
                                            M->getContext()),
                                        loadinst_count);
                                    loadinst_count++;
                                } else {
                                    argType = llvm::ConstantInt::get(
                                        llvm::IntegerType::getInt32Ty(
                                            M->getContext()),
                                        1);

                                    argID = llvm::ConstantInt::get(
                                        llvm::IntegerType::getInt32Ty(
                                            M->getContext()),
                                        storeinst_count);
                                    storeinst_count++;
                                }
                                // llvm::Value*
                                // arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
                                ib.CreateCall(
                                    fnew, {bitcastInst, arg, argType, argID});
                            }
                        }
                    }
                    if (!(isGlobal || isInter || isOther)) {
                        llvm::IRBuilder<> ib(&I);
                        llvm::FunctionCallee fnew = M->getOrInsertFunction(
                            "cspl_data_intra",
                            llvm::Type::getVoidTy(M->getContext()));

                        ib.CreateCall(fnew);
                    }
                }
            }
        }
    }

    static unsigned dd_class_id;

    void printDefUseChain(Value *V) {
            errs() << "    Def-use chain:\n";
            for (User *U : V->users()) {
                if (Instruction *Inst = dyn_cast<Instruction>(U)) {
                    errs() << "      Used in: " << *Inst << "\n";
                }
            }
        }

    DILocalVariable *getDebugVariable(AllocaInst *AI) {
        for (User *U : AI->users()) {
            if (DbgDeclareInst *DDI = dyn_cast<DbgDeclareInst>(U)) {
                return DDI->getVariable();
            }
            if (DbgValueInst *DVI = dyn_cast<DbgValueInst>(U)) {
                return DVI->getVariable();
            }
        }
        return nullptr;
    }


    bool runOnModule(Module& M) override {
        if (HexboxPolicy.compare("-") == 0) return false;

        // Read in Policy File

        std::ifstream policyFile;
        policyFile.open(HexboxPolicy);
        policyFile >> PolicyRoot;

        Json::Value& regions = PolicyRoot["Regions"];


        for (Function &F : M) {
            if (F.isDeclaration())
                continue; // Skip functions without a body.
            // =========================================================

            // // Check if the current function is in the specified file.
            // const DISubprogram *SP = F.getSubprogram();
            // if (!SP)
            //     continue;

            // const DIFile *File = SP->getFile();
            // if (!File)
            //     continue;

            // StringRef FileName = File->getFilename();
            // if (!FileName.endswith("AC_PosControl.cpp"))
            //     continue; // Skip functions not in the target file.

            // errs() << "Functions called in " << F.getName() << " (defined in AC_PosControl.cpp):\n";

                ////// "_ZN24AC_AttitudeControl_Multi19rate_controller_runEv" 
                ////// "_ZN14AP_AHRS_NavEKF11update_SITLEv"
                ////// "_ZN14AP_AHRS_NavEKF6updateEb" 



            //function granularity value-based DFI
            std::set<llvm::StringRef> validNames = {
                "_ZN13AC_PosControl20desired_accel_to_velEf",
                "_ZN13AC_PosControl17run_xy_controllerEf", 
                "_ZN13AC_PosControl18desired_vel_to_posEf",
                "_ZNK13AC_PosControl20accel_to_lean_anglesEffRfS0_", 
                "_ZN14AP_AHRS_NavEKF11update_EKF2Ev"
            };

            if (!validNames.count(F.getName())) {
                continue;
            }


            // if (F.getName() != "_ZN13AC_PosControl20desired_accel_to_velEf"  
            // F.getName()!= "_ZN13AC_PosControl14pre_arm_checksEPKcPch")
            //     continue; // Skip functions not matching the exact name.

            errs() << "Functions called in " << F.getName() << " (defined in AC_PosControl.cpp):\n";

            for (Instruction &I : instructions(F)) {
                // Check for local variables (alloca)
                if (AllocaInst *AI = dyn_cast<AllocaInst>(&I)) {
                    errs() << "Processing local variable: ";
                    if (AI->hasName()) {
                        errs() << AI->getName() << "\n";
                    } else {
                        errs() << "unnamed\n";
                    }

                    // Traverse all users of the AllocaInst
                    for (User *U : AI->users()) {
                        if (Instruction *Inst = dyn_cast<Instruction>(U)) {
                            IRBuilder<> Builder(Inst);

                            // Handle def (StoreInst)
                            if (StoreInst *SI = dyn_cast<StoreInst>(Inst)) {
                                Value *StoredValue = SI->getValueOperand();
                                Value *VariableAddress = SI->getPointerOperand();

                                if (!StoredValue || !VariableAddress) {
                                    errs() << "Invalid StoreInst: Missing pointer or value operand\n";
                                    continue;
                                }

                                // Debugging type information
                                errs() << "Processing StoreInst (Def): " << *SI << "\n";
                                errs() << "  VariableAddress Type: " << *(VariableAddress->getType()) << "\n";
                                errs() << "  StoredValue Type: " << *(StoredValue->getType()) << "\n";

                                // Cast VariableAddress to void* (i8*)
                                Value *CastedAddress = Builder.CreateBitCast(VariableAddress, Type::getInt8PtrTy(F.getContext()));

                                // // Cast StoredValue to float if it is not already of type float
                                // Value *CastedStoredValue = StoredValue;
                                // if (!StoredValue->getType()->isFloatTy()) {
                                //     CastedStoredValue = Builder.CreateFPCast(StoredValue, Type::getFloatTy(F.getContext()));
                                // }

                                // // Create the function type for 'record_dfi'
                                // FunctionType *RecordFuncType = FunctionType::get(
                                //     Type::getVoidTy(F.getContext()),                // Return type (void)
                                //     {Type::getInt8PtrTy(F.getContext()),            // Address as void*
                                //     Type::getFloatTy(F.getContext())},             // Value as float
                                //     false                                           // Not variadic
                                // );

                                // // Insert or retrieve the 'record_dfi' function
                                // Function *RecordFunc = dyn_cast<Function>(M.getOrInsertFunction("record_dfi", RecordFuncType).getCallee());

                                // if (!RecordFunc) {
                                //     errs() << "Error: Failed to retrieve or insert 'record_dfi' as a function. Symbol is of incompatible type.\n";
                                //     continue;
                                // }

                                // // Insert the call to 'record_dfi' before the StoreInst
                                // Builder.SetInsertPoint(SI);
                                // CallInst *RecordCall = Builder.CreateCall(RecordFunc, {CastedAddress, CastedStoredValue});

                                // // Attach debug location from the StoreInst
                                // if (SI->getDebugLoc()) {
                                //     RecordCall->setDebugLoc(SI->getDebugLoc());
                                // }
                                // errs() << "Inserted record_dfi() before def: " << *SI << "\n";



                                // Create the function type for 'record'
                                FunctionType *RecordFuncType = FunctionType::get(
                                    Type::getVoidTy(F.getContext()),                // Return type (void)
                                    {Type::getInt8PtrTy(F.getContext()),            // Address as void*
                                    StoredValue->getType()},                       // Value type
                                    false                                           // Not variadic
                                );

                                // Insert or retrieve the 'record' function
                                // Function *RecordFunc = cast<Function>(M.getOrInsertFunction("record", RecordFuncType).getCallee());
                                Value *RecordFuncValue = M.getOrInsertFunction("record_dfi", RecordFuncType).getCallee();
                                Function *RecordFunc = dyn_cast<Function>(RecordFuncValue);

                                if (!RecordFunc) {
                                    errs() << "Error: Failed to retrieve or insert 'record' as a function. Symbol is of incompatible type.\n";
                                    continue;
                                }
                                // Insert the call to 'record' before the StoreInst
                                Builder.SetInsertPoint(SI);
                                CallInst *RecordCall = Builder.CreateCall(RecordFunc, {CastedAddress, StoredValue});

                                // Attach debug location from the StoreInst
                                if (SI->getDebugLoc()) {
                                    RecordCall->setDebugLoc(SI->getDebugLoc());
                                }
                                errs() << "Inserted record() before def: " << *SI << "\n";

                                // =========================================================

                                // Find all uses of the variable defined by the StoreInst
                                for (User *VarUser : AI->users()) {
                                    if (LoadInst *LI = dyn_cast<LoadInst>(VarUser)) {
                                        Value *VariableAddress = LI->getPointerOperand();
                                        Value *LoadedValue = LI;

                                        if (!VariableAddress || !LoadedValue) {
                                            errs() << "Invalid LoadInst: Missing pointer or value operand\n";
                                            continue;
                                        }

                                        // Debugging type information
                                        errs() << "Processing LoadInst (Use): " << *LI << "\n";
                                        errs() << "  VariableAddress Type: " << *(VariableAddress->getType()) << "\n";
                                        errs() << "  LoadedValue Type: " << *(LoadedValue->getType()) << "\n";

                                        // Cast VariableAddress to void* (i8*)
                                        Value *CastedAddressForCheck = Builder.CreateBitCast(VariableAddress, Type::getInt8PtrTy(F.getContext()));

                                        // // Cast LoadedValue to float if it is not already of type float
                                        // Value *CastedLoadedValue = LoadedValue;
                                        // if (!LoadedValue->getType()->isFloatTy()) {
                                        //     CastedLoadedValue = Builder.CreateFPCast(LoadedValue, Type::getFloatTy(F.getContext()));
                                        // }

                                        // // Create the function type for 'check_dfi'
                                        // FunctionType *CheckFuncType = FunctionType::get(
                                        //     Type::getVoidTy(F.getContext()),                // Return type (void)
                                        //     {Type::getInt8PtrTy(F.getContext()),            // Address as void*
                                        //     Type::getFloatTy(F.getContext())},             // Value as float
                                        //     false                                           // Not variadic
                                        // );

                                        // // Insert or retrieve the 'check_dfi' function
                                        // Function *CheckFunc = dyn_cast<Function>(M.getOrInsertFunction("check_dfi", CheckFuncType).getCallee());

                                        // if (!CheckFunc) {
                                        //     errs() << "Error: Failed to retrieve or insert 'check_dfi' as a function. Symbol is of incompatible type.\n";
                                        //     continue;
                                        // }

                                        // // Insert the call to 'check_dfi' after the LoadInst
                                        // IRBuilder<> BuilderAfter(LI->getNextNode());
                                        // CallInst *CheckCall = BuilderAfter.CreateCall(CheckFunc, {CastedAddressForCheck, CastedLoadedValue});

                                        // // Attach debug location from the LoadInst
                                        // if (LI->getDebugLoc()) {
                                        //     CheckCall->setDebugLoc(LI->getDebugLoc());
                                        // }
                                        // errs() << "Inserted check_dfi() after use: " << *LI << "\n";


                                        // Create the function type for 'check'
                                        FunctionType *CheckFuncType = FunctionType::get(
                                            Type::getVoidTy(F.getContext()),                // Return type (void)
                                            {Type::getInt8PtrTy(F.getContext()),            // Address as void*
                                            LoadedValue->getType()},                       // Value type
                                            false                                           // Not variadic
                                        );

                                        // Insert or retrieve the 'check' function
                                        // Function *CheckFunc = cast<Function>(M.getOrInsertFunction("check", CheckFuncType).getCallee());
                                        Value *CheckFuncValue = M.getOrInsertFunction("check_dfi", CheckFuncType).getCallee();
                                        Function *CheckFunc = dyn_cast<Function>(CheckFuncValue);

                                        if (!CheckFunc) {
                                            errs() << "Error: Failed to retrieve or insert 'check' as a function. Symbol is of incompatible type.\n";
                                            continue;
                                        }
                                        // Insert the call to 'check' after the LoadInst
                                        IRBuilder<> BuilderAfter(LI->getNextNode());
                                        CallInst *CheckCall = BuilderAfter.CreateCall(CheckFunc, {CastedAddressForCheck, LoadedValue});

                                        // Attach debug location from the LoadInst
                                        if (LI->getDebugLoc()) {
                                            CheckCall->setDebugLoc(LI->getDebugLoc());
                                        }
                                        errs() << "Inserted check() after use: " << *LI << "\n";
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false; // The IR is not modified.



// =========================================================


        for (Function& Funct : M.getFunctionList()) {
            std::string func_name = Funct.getName().str();
            if (func_name.find("_ZN14AP_AHRS_NavEKF11update_SITLEv") != std::string::npos) {
                errs() << "Function name contains 'substring': " << func_name << "\n";
                // return false;
                continue;
            }
            else{
                // errs() << func_name << "\n";
                // return false;
                if (const DISubprogram *SP = Funct.getSubprogram()) {
                    if (const DIFile *File = SP->getFile()) {
                        StringRef FileName = File->getFilename();
                        StringRef Directory = File->getDirectory();

                        // Check if the file matches your specified file
                        if (FileName.endswith("AC_PosControl.cpp")) {
                            errs() << "Function " << Funct.getName() << " is in target_file.cpp\n";
                        }
                    }
                }
                continue;
            }
            // jinwen comment
            // return false;


            for (Json::ValueIterator it = regions.begin();
                 it != regions.end(); ++it) {
                
        // Json::StreamWriterBuilder builder;
        // const std::string regions_str = Json::writeString(builder, regions);
        // errs() << " Regions : " << regions_str << "\n";

                const std::string key = it.key().asString();
                std::string spec_fix = "REGION";

                if (key.find(spec_fix) == std::string::npos) {
                    // This is not the right region
                    // Legal region e.g., .CODE_REGION_1_
                    continue;
                }


                Json::Value& region = regions[key];
                Json::Value& elements = region["Objects"];
                // errs() << "Key : " << key << "\n";

                for (const Json::Value& element : elements) {
                    
                    Json::StreamWriterBuilder builder;
                    const std::string element_str =
                        Json::writeString(builder, element);

                    if(func_name == element.asString()){
                        // errs() << func_name << " vs " << element_str << "\n";    
                        // errs() << "Compartment is set \n";
                        Funct.setSection(key);
                    }
                }
            }
        }


        // jinwen comment
        // return false;

        errs() << "Instrumenting inter-CMPT transfer \n";
        for (Function& Funct : M.getFunctionList()) {
            instrument_cmpt_transfer(Funct);
        }

        errs() << "Instrumenting data transfer \n";
        for (Function& Funct : M.getFunctionList()) {
            instrument_data_transfer(Funct);
        }

        return false;
    }

    bool doFinalization(Module& M) override {
        std::ofstream outFile("/tmp/meta.txt");
        if (!outFile.is_open()) {
            std::cerr << "Failed to open the file." << std::endl;
            return 1;  // Exit with an error code
        }
        int number =
            storeinst_count > loadinst_count ? storeinst_count : loadinst_count;
        outFile << number;
        return false;
    }

    // We don't modify the program, so we preserve all analyses.
    void getAnalysisUsage(AnalysisUsage& AU) const override {
        AU.setPreservesAll();
    }
};

}  // namespace

// unsigned HexboxAnalysis::dd_class_id =0;
char HexboxApplication::ID = 0;
unsigned HexboxApplication::dd_class_id = 0;
static llvm::RegisterPass<HexboxApplication> X("HexboxApplication",
                                               "HexboxApplication Pass",
                                               false /* Only looks at CFG */,
                                               false /* Analysis Pass */);

static llvm::RegisterStandardPasses Y(
    llvm::PassManagerBuilder::EP_EarlyAsPossible,
    [](const llvm::PassManagerBuilder& Builder,
       llvm::legacy::PassManagerBase& PM) { PM.add(new HexboxApplication()); });
