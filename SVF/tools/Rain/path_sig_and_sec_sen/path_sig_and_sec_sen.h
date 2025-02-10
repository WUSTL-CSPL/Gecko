#pragma once
#include <cassert>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>

#include <fcntl.h>
#include <unistd.h>

#include "llvm/IR/Function.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/IRBuilder.h>


using namespace llvm;
using namespace std;


struct PathLogPass : public llvm::ModulePass {
    static char ID;

    int bbcount=0;
    int dfcount=0;
     llvm::raw_fd_ostream* ofs;
    PathLogPass() : ModulePass(ID) {
        int fd = open("/tmp/bb2id.txt", O_WRONLY | O_CREAT, 0666);
        ofs= new llvm::raw_fd_ostream(fd,true);

        std::ifstream inputFile("/tmp/numbers.txt");
         int number=0;

            while (inputFile >> number) {
               
            }

        inputFile.close();
        bbcount=number;

    }
    bool isAnnotated(Function* fun);
    bool AddEnd(Function* fun);
    virtual bool runOnModule(llvm::Module &M) override;

     std::string getBBLabel(BasicBlock* bb){
        std::string s;
        llvm::raw_string_ostream ss(s);
        ss<<bb->getParent()->getName()<<",";
        bb->printAsOperand(ss,false);

         return s;
    }

     std::string getSingleBBLabel(BasicBlock* bb){
        std::string s;
        llvm::raw_string_ostream ss(s);

        bb->printAsOperand(ss,false);

         return s;
    }


    void instrument_pathlog(BasicBlock * bb);

     void instrument_pathdf(BasicBlock * bb);

    void instrument_pathlog_start_end(BasicBlock * bb, Instruction* ii,std::string start_end);
    // void init_cust();
    Instruction* hasStartAnnotate(BasicBlock * bb);
    Instruction* hasEndAnnotate(BasicBlock * bb);

};
