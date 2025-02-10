//===- wpa.cpp -- Whole program analysis -------------------------------------//
//
//                     SVF: Static Value-Flow Analysis
//
// Copyright (C) <2013-2017>  <Yulei Sui>
//

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//===-----------------------------------------------------------------------===//

/*
 // Whole Program Pointer Analysis
 //
 // Author: Yulei Sui,
 */

#include "rain.h"

using namespace llvm;
using namespace std;
using namespace SVF;
char * filename="/home/ub1804/anytime-dfi_ws/slack-time/SVF/toy_examples/swap.ll";
/*
int arg_num = 3;
char *arg_value[3];
char * arg0="useless";
char * arg1="useless";
char* arg2="-ander";
*/
int arg_num = 4;
char *arg_value[4];
char * arg0="useless";
char * arg1="-cxt";
char* arg2="-query=all";




bool RainPass::runOnModule(llvm::Module &M) {
    arg_value[0]=arg0;
    arg_value[1]=arg1;
    arg_value[2]=arg2;
    arg_value[3]=filename;
    cl::ParseCommandLineOptions(arg_num, arg_value,
                                "Demand-Driven Points-to Analysis\n");

    std::vector<std::string> moduleNameVec;
    std::string tmp(filename);
    moduleNameVec.push_back(tmp);

    // SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);
    SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(M);
    svfModule->buildSymbolTableInfo();

    // WPAPass *wpa = new WPAPass();
    DDAPass *dda = new DDAPass();
    dda->runOnModule(svfModule);
    //  wpa->runOnModule(M);
    //below~~~
    SymbolTableInfo *symInfo = SymbolTableInfo::SymbolInfo();
    SymbolTableInfo::ValueToIDMapTy valSymMap=symInfo->valSyms();

    PointerAnalysis* pta = dda->getCurrentPta();
    SVFIR* pag= pta->getPAG();
     errs() << "HHHHHsdss ello done \n";
    
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
                SymbolTableInfo::ValueToIDMapTy::const_iterator iter =  valSymMap.find(&inst);
        
                SVFVar* node=pag->getGNode(iter->second); 
                if(iter!=valSymMap.end())
                {
                    errs()<<"found :" << iter->second<< " inst:"<<inst<<"\n";
                }else{
                    errs()<<"NOTfound : "<<inst<<"\n";
                }
            }
        }
    }
    
    errs() << "  Heldscdslo done \n";
    return false;
}

char RainPass::ID = 0;
static llvm::RegisterPass<RainPass> X("rainPass", "Rain Pass",
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