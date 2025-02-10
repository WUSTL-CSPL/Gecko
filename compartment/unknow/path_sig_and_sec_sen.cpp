

#include "path_sig_and_sec_sen.h"

using namespace llvm;
using namespace std;

//make sure we only instrument annotated function with cspl_start and end 
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
        if(F.getName().startswith("cspl_")){
            continue;
        }
         if(isAnnotated(&F)){
                if(!AddEnd(&F)){
                    errs()<<"----fail end: "<<F.getName()<<"\n";
                }
                
            }

        int n=0;
        for (Function::iterator bit = F.begin(), ebit = F.end();
                bit != ebit; ++bit){
                    n++;
                    BasicBlock& bb = *bit;
                    // std::string bblabel  =getBBLabel(&bb);
                    // errs()<<" hereeee"<<bblabel<<" \n";
                    if(Instruction* ii=hasStartAnnotate(&bb)){
                        instrument_pathlog_start_end(&bb,ii,"start");
                        errs()<<"find start\n";
                    }
                    instrument_pathlog(&bb);
                    // instrument_pathdf(&bb);
                    
                    if(Instruction* ii=hasEndAnnotate(&bb)){
                        instrument_pathlog_start_end(&bb,ii,"end");
                        errs()<<"find end\n";
                    }

                    

                }
           
               
    }
         errs()<<"----dfbNum: "<<dfcount<<" -----bbNum:"<<bbcount<<"\n";
         std::ofstream* outfile;
          outfile=new std::ofstream();
      // outfile->open("/tmp/func_profile.txt",std::ios::app);
      outfile->open("/tmp/numbers.txt");
                //   int fd = open("/tmp/numbers.txt", O_WRONLY | O_CREAT, 0666);
                //     llvm::raw_fd_ostream* tonum= new llvm::raw_fd_ostream(fd,true);
                    (*outfile)<<(bbcount+1);

                    outfile->close();




    return true;
}


char PathLogPass::ID = 0;
static llvm::RegisterPass<PathLogPass> X("profiling", "PathLog Pass",
                                     false /* Only looks at CFG */,
                                     false /* Analysis Pass */);

static llvm::RegisterStandardPasses
    Y(llvm::PassManagerBuilder::EP_EarlyAsPossible,
      [](const llvm::PassManagerBuilder &Builder,
         llvm::legacy::PassManagerBase &PM) { PM.add(new PathLogPass()); });


Instruction* PathLogPass::hasStartAnnotate(BasicBlock * bb){
    bool isnext=false; 
    for(Instruction &I :*bb){
                if(isnext){
                    return &I;
                }
                         if(const CallBase* callInst= llvm::dyn_cast<llvm::CallBase>(&I)){
                                    llvm::Function *calledFunc=callInst->getCalledFunction();
                                    if(calledFunc){
                                        if(calledFunc->getName().startswith("cspl_beginInst")){
                                            // return &I;
                                            isnext=true;
                                        }
                                    }
                         }
                }

return nullptr;
}
Instruction* PathLogPass::hasEndAnnotate(BasicBlock * bb){
     for(Instruction &I :*bb){

                         if(const CallBase* callInst= llvm::dyn_cast<llvm::CallBase>(&I)){
                                    llvm::Function *calledFunc=callInst->getCalledFunction();
                                    if(calledFunc){
                                        // if(bb->getParent()->getName()=="_ZN19robotis_manipulator18RobotisManipulator19makeJointTrajectoryESt6vectorIdSaIdEEdS1_INS_6_PointESaIS4_EE")
                                        // {
                                        //     errs()<<"jjjjj: "<<I<<"\n";
                                        // }


                                        if(calledFunc->getName().startswith("cspl_returnInst")){
                                            return &I;
                                        }
                                    }
                         }
                }


    return nullptr;
}
void PathLogPass::instrument_pathlog_start_end(BasicBlock * bb, Instruction* ii,std::string start_end){
    llvm::Module * 	M=bb->getModule();

        // std::string bblabel=getBBLabel(bb);
        // *ofs<<bblabel<<","<<bbcount<<"\n";
        // errs()<<bblabel<<","<<bbcount<<"\n";

        Instruction& inst=*ii;
        llvm::IRBuilder<> ib(&inst);
        llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_path_sig_"+start_end,llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
        llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
        // llvm::Value* arg2=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bb->size());
        ib.CreateCall(fnew,{arg});
        ofs->flush();

}
 void PathLogPass::instrument_pathlog(BasicBlock * bb){
        bbcount++;
        llvm::Module * 	M=bb->getModule();

        // std::string bblabel=getBBLabel(bb);
        // *ofs<<bblabel<<","<<bbcount<<"\n";
        // errs()<<bblabel<<","<<bbcount<<"\n";

        Instruction& inst=*(bb->getTerminator());
        llvm::IRBuilder<> ib(&inst);
        llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_path_sig",llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
        llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
        llvm::Value* arg2=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bb->size());
        ib.CreateCall(fnew,{arg,arg2});
        ofs->flush();
    }


 void PathLogPass::instrument_pathdf(BasicBlock * bb){
        bbcount++;
        llvm::Module * 	M=bb->getModule();

        // std::string bblabel=getBBLabel(bb);
        // *ofs<<bblabel<<","<<bbcount<<"\n";
        // errs()<<bblabel<<","<<bbcount<<"\n";

        Instruction& inst=*(bb->getTerminator());
        llvm::IRBuilder<> ib(&inst);
        llvm::FunctionCallee fnew=M->getOrInsertFunction("cspl_path_df",llvm::Type::getVoidTy(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()),llvm::IntegerType::getInt32Ty(M->getContext()));
        llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
        int df_size=0;
        {
            for (BasicBlock::iterator it = bb->begin(), eit = bb->end();
                    it != eit; ++it)
            {
                    Instruction& _inst = *it;
                    Instruction* inst=&_inst;
                     const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst);
                    const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst);
                    
                    if(!loadInst && !storeInst){
                        continue;
                    }
                    df_size++;       

                }
        }
        dfcount+=df_size;
        llvm::Value* arg2=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),df_size);
        ib.CreateCall(fnew,{arg,arg2});
        ofs->flush();
    }


