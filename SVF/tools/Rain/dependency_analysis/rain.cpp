

#include "rain.h"
#define PRINTOUT 0
#define ISANALYSIS 1
// #include "dependency_walker.cpp"
// #include "instrumenter_loger.cpp"
using namespace llvm;
using namespace std;
using namespace SVF;
// char * filename="/home/ub1804/anytime-dfi_ws/slack-time/SVF/toy_examples/amcl.bc";
// char * filename="/home/ub1804/pgi_ws/SVF/toy_examples/swap.ll";
// char * filename="/home/ub1804/anytime-dfi_ws/slack-time/SVF/toy_examples/llvm13_bitcode.bc";
// char * filename="~/catkin_ws/build/amcl/onewhole.bc";
/*
int arg_num = 3;
char *arg_value[3];
char * arg0="useless";
char * arg1="useless";
char* arg2="-ander";
*/
/*
int arg_num = 4;
char *arg_value[4];
char * arg0="useless";
char * arg1="-cxt";
char* arg2="-query=all";
*/

int arg_num = 4;
char *arg_value[4];
char * arg0="useless";
char * arg1="--dump-vfg";
char* arg2="--cflsvfg";

/*
int arg_num = 10;
char *arg_value[10];
char * arg0="useless";
char * arg1=" -cxt";
char* arg2="-query=all";
char* arg3="-max-cxt=3";
char* arg4="-flow-bg=100000000";
char* arg5="-cxt-bg=10000000000";
char* arg6="-stat=false";
char* arg7="--cdaa";
char* arg8="--cpts";
*/
// char* arg9="";
// std::vector<SVFVar*> getUpperDefs(llvm::Module &M,Instruction* i,SymbolTableInfo::ValueToIDMapTy& valSymMap){
//     std::vector<SVFVar*> upperdefs;

// }

bool RainPass::runOnModule(llvm::Module &M) {

     char * filename = (char*) M.getModuleIdentifier().c_str();
    errs()<<"process bitcode: "<<filename<<"\n";
    // char * filename=.c_str();
    // for (Function &F : M) {
    //      errs() << "Dominator tree for "<<F.getName()<<";\n";
    //     DominatorTree &DT = getAnalysis<DominatorTreeWrapperPass>(F).getDomTree();
    //     DT.print(errs());
    //     errs() << "FINISH Dominator tree for "<<F.getName()<<";\n";
        
    // }
    
    arg_value[0]=arg0;
    arg_value[1]=arg1;
    arg_value[2]=arg2;
    arg_value[3]=filename;
    
    //  arg_value[0]=arg0;
    // arg_value[1]=arg1;
    // arg_value[2]=arg2;
    // arg_value[3]=filename;
    cl::ParseCommandLineOptions(arg_num, arg_value,
                                "CFL Reachability Analysis\n");

    std::vector<std::string> moduleNameVec;
    std::string tmp(filename);
    moduleNameVec.push_back(tmp);

    // SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);
    SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(M);
    svfModule->buildSymbolTableInfo();

    SVFIRBuilder builder;
    SVFIR* svfir = builder.build(svfModule);

    CFLVF* cfl = new CFLVF(svfir);
    // cfl->analyze();
    cfl->buildSVFGraph();


   
    // WPAPass *wpa = new WPAPass();
    /*DDAPass *dda = new DDAPass();
    dda->runOnModule(svfModule);*/
    //  wpa->runOnModule(M);
    //below~~~
    SymbolTableInfo *symInfo = SymbolTableInfo::SymbolInfo();
    SymbolTableInfo::ValueToIDMapTy& valSymMap=symInfo->valSyms();

    // PointerAnalysis* pta = cfl->getCurrentPta();
    // SVFIR* pag= pta->getPAG();
    SVFG* svfg=cfl->getSvfg();
    errs() << "ss ello done \n";
    
    SVFIR* pag=svfir;
    // if(svfir==svfg->getPAG()){
    //     errs()<<" EQQQ\n";
    // }
    DepWalker depwalker(M,svfModule,svfir,valSymMap,svfg,pag);
    depwalker.mainpass=this;
    this->depWalker=&depwalker;
    Instrumenter instrumenter(M);
    depwalker.instrumenter=&instrumenter;
     errs() << "aaHHaaaHHHsdss ello done \n";
    
        /// collect return node of function fun
   
     for (SVFModule::iterator fit = svfModule->begin(), efit = svfModule->end();
            fit != efit; ++fit)
    {
        const SVFFunction& fun = **fit;
        /// collect return node of function fun
     
        
        for (Function::iterator bit = fun.getLLVMFun()->begin(), ebit = fun.getLLVMFun()->end();
                bit != ebit; ++bit)
        {
            BasicBlock& bb = *bit;
            for (BasicBlock::iterator it = bb.begin(), eit = bb.end();
                    it != eit; ++it)
            {
                    Instruction& inst = *it;

                  
                    
                    const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(&inst);
                    const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(&inst);
                    if(!loadInst && !storeInst){
                        continue;
                    }

                    if(!ISANALYSIS){
                         Set<Instruction*> instset;
                         instset.insert(&inst);
                            instrumenter.instrument(instset);
                        continue;
                    
                    }
                    if(PRINTOUT){
                        errs()<<" inst: "<<inst<<"\n";
                    }
                      
                  
                    DepWalker::VisitedSVFGNodeSetTy deps =depwalker.getAllUpperDeps_single(&inst,true);
                    if(PRINTOUT){
                          errs()<<" Total Num "<<deps.size()<<"\n";
                     
                      errs()<<" Total Num "<<deps.size()<<"\n";
                    }
                    //   for(auto n:deps){
                    //     errs()<<"   ------  "<<n->toString()<<"\n";
                    //   }
                      Set<Instruction*> loads=depwalker.getLoad(deps);
                      Set<Instruction*> stores=depwalker.getStore(deps);
                      
                       if(PRINTOUT){
                         errs()<<"Num Load: "<<loads.size()<<"  Num store: "<<stores.size()<<"\n";
                       }
                     
                      instrumenter.instrument(loads);
                      instrumenter.instrument(stores);
                        instrumenter.logToFile(&inst);

                    
            }
        }
    }   

    
    errs() << "  data-dependency, Maxsize: "<<depwalker.getMaxfromMap(depwalker.visitedSVFGNode2DepNum)<<" total num: "<< depwalker.visitedSVFGNodeSet.size()<< "  \n";
    errs()<< " load total num: "<<depwalker.visitedSVFGNode2LoadNum.size()<<"  store total num: "<<depwalker.visitedSVFGNode2StoreNum.size()<<" \n";
    errs()<< " load max num: "<<depwalker.getMaxfromMap(depwalker.visitedSVFGNode2LoadNum)<<"  store max num: "<<depwalker.getMaxfromMap(depwalker.visitedSVFGNode2StoreNum)<<" \n";
    
    return true;
}


char RainPass::ID = 0;
static llvm::RegisterPass<RainPass> X("profiling", "Rain Pass",
                                     false /* Only looks at CFG */,
                                     false /* Analysis Pass */);

static llvm::RegisterStandardPasses
    Y(llvm::PassManagerBuilder::EP_EarlyAsPossible,
      [](const llvm::PassManagerBuilder &Builder,
         llvm::legacy::PassManagerBase &PM) { PM.add(new RainPass()); });





           /*  using original Module
            for (auto &F : M.getFunctionList()) 
    {
       
        for (Function::iterator bit = F.begin(), ebit = F.end();
                bit != ebit; ++bit)
        {
            BasicBlock& bb = *bit;
            for (BasicBlock::iterator it = bb.begin(), eit = bb.end();
                    it != eit; ++it)
            {
                Instruction& inst = *it;
                SymbolTableInfo::ValueToIDMapTy::const_iterator iter =  valSymMap.find(&inst);
        
                
                if(iter!=valSymMap.end())
                {
                    errs()<<"found :" << iter->second<< " inst:"<<inst<<"\n";
                }else{
                    errs()<<"NOTfound : "<<inst<<"\n";
                }
            }
        }
    }
    */

 
