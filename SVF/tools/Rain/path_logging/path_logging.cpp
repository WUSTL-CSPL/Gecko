

#include "path_logging.h"

using namespace llvm;
using namespace std;
using namespace SVF;

 bool PathLogPass::isAnnotated(Function* fun){
     for (Function::iterator bit = fun->begin(), ebit = fun->end();
                bit != ebit; ++bit){
                BasicBlock& bb = *bit;
                for(Instruction &I :bb){
                         
                         if(const CallInst* callInst= llvm::dyn_cast<llvm::CallInst>(&I)){
                                    llvm::Function *calledFunc=callInst->getCalledFunction();
                                    if(calledFunc){
                                        if(calledFunc->getName()=="cspl_start"){
                                            return true;
                                        }
                                    }
                         }
                }

    }


    return false;
 }


bool PathLogPass::AddEnd(Function* fun){
    

    for (Function::iterator BB = fun->begin(), E = fun->end(); BB != E; ++BB) {
        if (isa<ReturnInst>(BB->getTerminator())) {
            // This is a return block
            llvm::Module * 	M=BB->getModule();
            BasicBlock* retBlock = &(*BB);
            llvm::Instruction *termInst = retBlock->getTerminator();
            llvm::IRBuilder<> ib(termInst);
                llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_end",llvm::Type::getVoidTy(M->getContext()));
                // llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
                ib.CreateCall(fnew);
                return true;

        }

}
return false;

    // BasicBlock* retBlock = fun->getReturnBlock();
    // llvm::Instruction *termInst = retBlock->getTerminator();
    
}

bool PathLogPass::runOnModule(llvm::Module &M) {

    

    for (Function &F : M.functions()){
        
        int n=0;
        for (Function::iterator bit = F.begin(), ebit = F.end();
                bit != ebit; ++bit){
                    n++;
                    BasicBlock& bb = *bit;
                    std::string bblabel  =getBBLabel(&bb);
                    // errs()<<" hereeee"<<bblabel<<" \n";
                    instrument_pathlog(&bb);

                }
            if(isAnnotated(&F)){
                if(!AddEnd(&F)){
                    errs()<<"----fail end: "<<F.getName()<<"\n";
                }
            }
                // errs()<<"----bbNum: "<<n<<"\n";
    }
   
   
    

    return true;
}


char PathLogPass::ID = 0;
static llvm::RegisterPass<PathLogPass> X("pathLogPass", "PathLog Pass",
                                     false /* Only looks at CFG */,
                                     false /* Analysis Pass */);

static llvm::RegisterStandardPasses
    Y(llvm::PassManagerBuilder::EP_EarlyAsPossible,
      [](const llvm::PassManagerBuilder &Builder,
         llvm::legacy::PassManagerBase &PM) { PM.add(new PathLogPass()); });


 void PathLogPass::instrument_pathlog(BasicBlock * bb){
        bbcount++;
        llvm::Module * 	M=bb->getModule();
 
        std::string bblabel=getBBLabel(bb);
        *ofs<<bblabel<<","<<bbcount<<"\n";
        // errs()<<bblabel<<","<<bbcount<<"\n";

        Instruction& inst=*(bb->getTerminator());
        llvm::IRBuilder<> ib(&inst);
        llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_path_log",llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
        llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
        ib.CreateCall(fnew,{arg});
        ofs->flush();
    }
   

