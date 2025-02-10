#pragma once 

// #include "rain.h"
#include "common.h"

class Instrumenter{
    // friend RainPass;
    // friend DepWalker;
    public:
    Set<Instruction*> instrumented_inst;
     Map<Instruction*,int> load2numdef;
      Map<Instruction*,Set<Instruction*>> load2store;
      Map<Instruction*,Set<Instruction*>> store2load;
      Set<Instruction*> logged_inst;

        llvm::raw_fd_ostream* ofs;
    llvm::Module &M;
    bool maintainDef_num;
    Instrumenter(llvm::Module& m):M(m),maintainDef_num(true){
        int fd = open("log.txt", O_WRONLY | O_CREAT, 0666);
        ofs= new llvm::raw_fd_ostream(fd,true);
            // ofs.open("log.txt", std::ofstream::out | std::ofstream::app);
    }
    ~Instrumenter(){
         ofs->flush();

    }

    void instrument(Set<Instruction*> toadd);
    void logToFile(Instruction* root);
    inline int getTrueOffset(Instruction* _inst){
            BasicBlock* bb=_inst->getParent();
            int position=0;
             for (BasicBlock::iterator it = bb->begin(), eit = bb->end();
                    it != eit; ++it){
                         Instruction* inst = &(*it);
                        if(inst==_inst){
                            return position;
                        }
                         if(const CallInst* callInst= llvm::dyn_cast<llvm::CallInst>(inst)){
                                    llvm::Function *calledFunc=callInst->getCalledFunction();
                                    if(calledFunc){
                                        if(calledFunc->getName()=="dfi_load_check"||calledFunc->getName()=="dfi_store_check"){
                                            continue;
                                        }
                                    }
                         }
                         position++;
                    }

                    return position;
    }
};
