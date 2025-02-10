

#include "profiling.h"

using namespace llvm;
using namespace std;
using namespace SVF;

 bool Profiling::isAnnotated(Function* fun){
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


bool Profiling::AddEnd(Function* fun){
    

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

  ReturnInst* Profiling::inst_func(Function* fun){
        func_count++;
        for (Function::iterator BB = fun->begin(), E = fun->end(); BB != E; ++BB)
        {
            BasicBlock& bb = *BB;

           
            for (BasicBlock::iterator it = bb.begin(), eit = bb.end();
                    it != eit; ++it)
            {
                Instruction& inst = *it;
                llvm::Module * 	M=BB->getModule();

                llvm::IRBuilder<> ib(&inst);
                    llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_beginInst",llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
                     llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),func_count);
                    // llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
                    ib.CreateCall(fnew,{arg});


                break;
            }
            break;

        }
        *ofs<<fun->getName()<<" : " << func_count<<"\n";
         ofs->flush();
        for (Function::iterator BB = fun->begin(), E = fun->end(); BB != E; ++BB) {


            if (isa<ReturnInst>(BB->getTerminator())) {
                // This is a return block
                llvm::Module * 	M=BB->getModule();
                BasicBlock* retBlock = &(*BB);
                llvm::Instruction *termInst = retBlock->getTerminator();
                llvm::IRBuilder<> ib(termInst);
                    llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_returnInst",llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
                     llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),func_count);
                    // llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
                    ib.CreateCall(fnew,{arg});
                    return llvm::dyn_cast<llvm::ReturnInst>(termInst);

            }

        }
        return nullptr;
    }

bool Profiling::runOnModule(llvm::Module &M) {

    

    for (Function &F : M.functions()){
        inst_func(&F);
        

        
    }
     errs()<<"----funcNum: "<<func_count<<"\n";
   
   
    

    return true;
}


char Profiling::ID = 0;
static llvm::RegisterPass<Profiling> X("profiling", "Profiling Pass",
                                     false /* Only looks at CFG */,
                                     false /* Analysis Pass */);

static llvm::RegisterStandardPasses
    Y(llvm::PassManagerBuilder::EP_EarlyAsPossible,
      [](const llvm::PassManagerBuilder &Builder,
         llvm::legacy::PassManagerBase &PM) { PM.add(new Profiling()); });


 void Profiling::instrument_pathlog(BasicBlock * bb){
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
   

