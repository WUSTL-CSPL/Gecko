
#pragma once 
#include <cassert>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
#include <string>
#include <fstream>
#include <fcntl.h>
#include <unistd.h>

#include "SVF-FE/LLVMUtil.h"
#include "WPA/WPAPass.h"
#include "Util/Options.h"
#include "DDA/DDAPass.h"
#include "SVF-FE/SVFIRBuilder.h"
#include "CFL/CFLAlias.h"
#include "CFL/CFLVF.h"

using namespace llvm;
using namespace std;
using namespace SVF;

// class Instrumenter;

#include "instrumenter_loger.h"
#include "dependency_walker.h"
#include "rain.h"