//===- Checkpointing.cpp -------------------------------------------------===//
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

using namespace std;
using namespace SVF;

#define DEBUG_TYPE "hexbox"

STATISTIC(NumFunctions, "Num Functions");

namespace {

using namespace llvm;

struct Checkpointing : public ModulePass {
    static char ID;
    Checkpointing() : ModulePass(ID) {
        // initializeCheckpointingPass(*PassRegistry::getPassRegistry());
    }

    std::vector<llvm::Value*> variables_to_checkpoint;

    bool runOnModule(Module &M) override {

        errs() << "Hello, I am in the Pass of Checkpointing \n";

        std::vector<llvm::Constant *> variable_size_array;
        std::vector<llvm::Constant *> variable_addr_array;

        int global_var_count = 0;
        int init_function_inserted = 0;
        
        for (Function &F : M) {
            // errs() << F.getName().str() << "\n";
            ////////// Block for inserting the initialization function
            if (F.getName().str() == "main") { // TODO CHANGE this name
                // errs() << "I found the main function \n";
                // Insert your function call at the beginning of `main`
                llvm::IRBuilder<> Builder(&*F.getEntryBlock().getFirstInsertionPt());
                // Assume yourFunction is a function you want to insert
                llvm::FunctionCallee checkpoint_init_function = M.getOrInsertFunction("init_checkpointing_memory", Type::getVoidTy(M.getContext()));
                if (checkpoint_init_function) {
                    Builder.CreateCall(checkpoint_init_function, {/* arguments if any */});
                    init_function_inserted = 1;
                }
            }
            ////////// End - Block for inserting the initialization function

            for (BasicBlock &BB : F) {
                for (Instruction &I : BB) {
                    if (auto *storeInst = dyn_cast<StoreInst>(&I)) {
                        // Check if the operand is a global variable
                        // Only care store instruction
                        if (isa<GlobalVariable>(
                                storeInst->getPointerOperand())) {
                            errs() << "Found global variable \n";
                            llvm::IRBuilder<> ib(I.getNextNode());

                            Type *intType = Type::getInt32Ty(M.getContext());
                            Type *voidType = Type::getVoidTy(M.getContext());
                            
                            Type *voidPointerType =
                                Type::getInt64PtrTy(M.getContext()); // This could also be getInt8PtrTy

                            llvm::Value *pointer =
                                storeInst->getPointerOperand();
                            Type *operandType = pointer->getType();

                            DataLayout dataLayout(&M);
                            uint64_t pointeeSize = dataLayout.getTypeAllocSize(
                                operandType->getPointerElementType());

                            // Concert uint64 to llvm Constant
                            llvm::IntegerType *Int64Type =
                                llvm::Type::getInt64Ty(M.getContext());
                            llvm::Constant *pointee_constant =
                                llvm::ConstantInt::get(Int64Type, pointeeSize);
                            // Store the size into the arrary
                            variable_size_array.push_back(pointee_constant);

                            /* Instrumenting the checkpointing functions */
                            llvm::FunctionCallee checkpoint_function = M.getOrInsertFunction(
                                "checkpoint_variable", voidType,
                                voidPointerType, intType, intType, intType);

                            llvm::Value *size = llvm::ConstantInt::get(
                                llvm::IntegerType::getInt32Ty(M.getContext()),
                                pointeeSize);

                            llvm::Value *argType = nullptr;
                            llvm::Value *argID = nullptr;

                            llvm::Value *bitcastValue = ib.CreateBitCast(
                                pointer, voidPointerType, "bitcast");

                            argType = llvm::ConstantInt::get(
                                llvm::IntegerType::getInt32Ty(M.getContext()),
                                1);

                            int global_var_id = global_var_count++;
                            argID = llvm::ConstantInt::get(
                                llvm::IntegerType::getInt32Ty(M.getContext()),
                                global_var_id);

                            // llvm::Value*
                            // arg=llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(M->getContext()),bbcount);
                            ib.CreateCall(checkpoint_function,
                                          {bitcastValue, size, argType, argID});

                            /* End of instrumenting*/
                        }
                    }
                }
            }
        }
        /*
                errs() << "Going to handle global variables \n";
        */
        llvm::LLVMContext &Context = M.getContext();

        // Define the type of your global variable (e.g., Integer)
        llvm::IntegerType *Int32Type = Type::getInt32Ty(Context);
        llvm::IntegerType *Int64Type = Type::getInt64Ty(Context);

        // Create a constant to count the number of global variables
        llvm::Constant *count_value =
            ConstantInt::get(Int32Type, global_var_count);  // Example value 42
        llvm::Constant *checkpoint_flag =
            ConstantInt::get(Int32Type, 1);  // Example value 42

        // Create the global variable
        new GlobalVariable(M, Int32Type, false, GlobalValue::ExternalLinkage,
                           count_value, "number_var_checkpoint");
        new GlobalVariable(M, Int32Type, false, GlobalValue::ExternalLinkage,
                           checkpoint_flag, "need_checkpoint");

        // Insert an array for storing the address of all varibales

        llvm::ArrayType *IntArrayType =
            llvm::ArrayType::get(Int64Type, global_var_count);
        llvm::Constant *ArrayInit =
            llvm::ConstantArray::get(IntArrayType, variable_size_array);
        new llvm::GlobalVariable(M, IntArrayType, true,
                                 llvm::GlobalValue::ExternalLinkage, ArrayInit,
                                 "checkpoint_variables_size_array");

        errs() << "Finished - Checkpointing Pass \n";

        if (init_function_inserted == 0) {
            errs() << "main functon not found !!! \n";
        }

        return true;
    }
};

}  // namespace

// unsigned Checkpointing::dd_class_id =0;
char Checkpointing::ID = 0;
// unsigned Checkpointing::dd_class_id = 0;

static llvm::RegisterPass<Checkpointing> X("Checkpointing",
                                           "Checkpointing Pass",
                                           false /* Only looks at CFG */,
                                           false /* Analysis Pass */);

static llvm::RegisterStandardPasses Y(
    llvm::PassManagerBuilder::EP_EarlyAsPossible,
    [](const llvm::PassManagerBuilder &Builder,
       llvm::legacy::PassManagerBase &PM) { PM.add(new Checkpointing()); });
