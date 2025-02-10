#include "common.h"

 void Instrumenter::instrument(Set<Instruction*> toadd){
            // *ofs<<"\n";
            for(auto inst:toadd){
                        if(!inst){
                            continue;
                        }

                        /*{
                           
                             if(const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst)){
                                  int num_def=1;
                                 if(load2numdef.find(inst)!=load2numdef.end()){                    
                                    num_def=load2numdef[inst];
                                }
                                    inst->getParent()->printAsOperand(*ofs,false);
                            *ofs<<","<<getTrueOffset(inst)<<","<<num_def<<";";
                             }else if(const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst)){
                                      inst->getParent()->printAsOperand(*ofs,false);
                                     *ofs<<","<<getTrueOffset(inst)<<","<<-1<<";";
                             }
                            
                        }*/
                        if(instrumented_inst.find(inst)!=instrumented_inst.end()){
                            continue;
                        }
                          llvm::IRBuilder<> ib(inst);
           
                   if(const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst)){
                    int num_def=1;
                    if(load2numdef.find(inst)!=load2numdef.end()){
                       
                        num_def=load2numdef[inst];
                        //  errs()<<"here inst "<<*loadInst<<" dd "<<num_def<<"\n";
                    } 
                    // *ofs<<"【"<<getTrueOffset(inst)<<"】"<<";";
        
                    llvm::FunctionCallee fnew=M.getOrInsertFunction("dfi_load_check",llvm::Type::getVoidTy(M.getContext()),llvm::IntegerType::getInt32Ty(M.getContext()));
                    llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M.getContext()),num_def);
                    ib.CreateCall(fnew,{arg});
                    instrumented_inst.insert(inst);
                    // inst->getParent()->printAsOperand(*ofs,false);
                    // *ofs<<","<<getTrueOffset(inst)<<","<<num_def<<";";
        
                   }else if(const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst)){
                    // *ofs<<"【"<<getTrueOffset(inst)<<"】"<<";";
                        llvm::FunctionCallee fnew=M.getOrInsertFunction("dfi_store_check",llvm::Type::getVoidTy(M.getContext()),llvm::IntegerType::getInt32Ty(M.getContext()));
                    llvm::Value* arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M.getContext()),1);
                     ib.CreateCall(fnew,{arg});
                    instrumented_inst.insert(inst);
                    
                    
                    // ofs->flush();
                   }
                
                    
            }
            
    }

   void Instrumenter::logToFile(Instruction* root){
    std::vector<Instruction*> WorkList;
    WorkList.push_back(root);
    while(!WorkList.empty()){
        Instruction* inst = WorkList.back();
        WorkList.pop_back();
        if(logged_inst.find(inst)!=logged_inst.end()){
            continue;
        }
        logged_inst.insert(inst);

        *ofs<<inst->getParent()->getParent()->getName()<<",";
        inst->getParent()->printAsOperand(*ofs,false);
        *ofs<<","<<getTrueOffset(inst)<<" { ";

        if(const LoadInst* loadInst= llvm::dyn_cast<llvm::LoadInst>(inst)){
            if(load2store.find(inst)!=load2store.end()){
                Set<Instruction*> depInsts=load2store[inst];
                for(auto i:depInsts){
                    *ofs<<i->getParent()->getParent()->getName()<<",";
                    i->getParent()->printAsOperand(*ofs,false);
                    *ofs<<","<<getTrueOffset(i)<<" ";

                    if(logged_inst.find(i)==logged_inst.end()){
                        WorkList.push_back(i);
                    }
                }
            }
        }else if(const StoreInst* storeInst= llvm::dyn_cast<llvm::StoreInst>(inst)){
            if(store2load.find(inst)!=store2load.end()){
                Set<Instruction*> depInsts=store2load[inst];
                for(auto i:depInsts){
                    if(logged_inst.find(i)==logged_inst.end()){
                        WorkList.push_back(i);
                    }
                }
            }
        }
        *ofs<<"}\n";


    }
    ofs->flush();
   }


