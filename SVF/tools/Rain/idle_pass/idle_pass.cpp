

#include "idle_pass.h"

using namespace llvm;
using namespace std;
using namespace SVF;




bool Fake_dfi::runOnModule(llvm::Module &M) {
    errs()<<"no  process for:"<<M.getModuleIdentifier().c_str()<<" \n";
    return true;

    for (Function &F : M.functions()){
        if(F.getName().startswith("cspl_")){
            continue;
        }
         for (Function::iterator bit = F.begin(), ebit = F.end();
                bit != ebit; ++bit){
                   
                    BasicBlock& bb = *bit;
            
            for (BasicBlock::iterator it = bb.begin(), eit = bb.end();
                    it != eit; ++it)
            {
                    Instruction& _inst = *it;
                    Instruction* inst=&_inst;
                     const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst);
                    const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst);
                    
                    if(!loadInst && !storeInst){
                        continue;
                    }

                    {
                         llvm::IRBuilder<> ib(inst);
                         if(const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst)){
                            int num_def=1;
                           
                
                            llvm::FunctionCallee fnew=M.getOrInsertFunction("dfi_load_check",llvm::Type::getVoidTy(M.getContext()),llvm::IntegerType::getInt32Ty(M.getContext()));
                            llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M.getContext()),num_def);
                            ib.CreateCall(fnew,{arg});
                     
                
                        }else if(const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst)){
                            // *ofs<<"【"<<getTrueOffset(inst)<<"】"<<";";
                                llvm::FunctionCallee fnew=M.getOrInsertFunction("dfi_store_check",llvm::Type::getVoidTy(M.getContext()),llvm::IntegerType::getInt32Ty(M.getContext()));
                            llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M.getContext()),1);
                            ib.CreateCall(fnew,{arg});
                        }
                    }                   

                }
        

        
    }
    }

   
    

    return true;
}


char Fake_dfi::ID = 0;
static llvm::RegisterPass<Fake_dfi> X("profiling", "Profiling Pass",
                                     false /* Only looks at CFG */,
                                     false /* Analysis Pass */);

static llvm::RegisterStandardPasses
    Y(llvm::PassManagerBuilder::EP_EarlyAsPossible,
      [](const llvm::PassManagerBuilder &Builder,
         llvm::legacy::PassManagerBase &PM) { PM.add(new Fake_dfi()); });


   

