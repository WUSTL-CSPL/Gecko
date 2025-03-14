# Installation

This document provides step-by-step instructions for installing Gecko from scratch on your local machine.

## Install Required Dependencies

Most of the necessary packages can be installed using `apt` and `pip`.

Install apt packages:

```bash!
$ sudo apt update
$ sudo apt install cmake build-essential make texinfo bison flex ninja-build git ncurses-dev texlive-full binutils-dev python-networkx python-matplotlib python-pygraphviz python-serial 
```


Install pip packages:

```bash!


```

**Trouble Shooting**:

You may meet errors when you try to install xxx

## Install LLVM

Gecko is built on top of LLVM 13. The following instructions are sourced from the official LLVM website: [https://releases.llvm.org/13.0.0/docs/CMake.html](https://releases.llvm.org/13.0.0/docs/CMake.html).


Install some prerequisite packages:

```bash!
sudo apt install -y build-essential cmake ninja-build git curl python3 zlib1g-dev libedit-dev libncurses5-dev libxml2-dev libssl-dev libtool-bin texinfo libexpat1-dev
```

To enable the LLVM pass, we enable the gold plugin, which requires `binutils` to build

```bash!
$ cd ~
$ git clone --depth 1 git://sourceware.org/git/binutils-gdb.git binutils
```

Pull and compile the llvm-project:

```bash!
$ cd ~
$ git clone https://github.com/llvm/llvm-project.git
$ cd llvm-project
$ git checkout remotes/origin/release/13.x
$ mkdir build
$ cd build
$ cmake -G "Unix Makefiles" ../llvm \
       -DCMAKE_BUILD_TYPE=Release \
       -DLLVM_ENABLE_PROJECTS="clang;clang++;lld;compiler-rt" \
       -DCMAKE_INSTALL_PREFIX=/usr/local/llvm \
       -DLLVM_BINUTILS_INCDIR=~/binutils/include/ \
       -DLLVM_ENABLE_LTO=Thin \
       -DLLVM_USE_SANITIZER=Address \
       -DLLVM_USE_LINKER=gold
$ make
```

Once the compilation is complete, add LLVM to your `PATH` environment variable by appending the following line to your `~/.bashrc` file. Then, run `source ~/.bashrc` to apply the changes.




## Install Gecko


### Build SVF

Our LLVM pass relies on jsoncpp in compartmentalization step

<!-- ```bash!
git clone https://github.com/open-source-parsers/jsoncpp.git
cd jsoncpp
mkdir build && cd build
cmake .. && make
sudo make install
``` -->

```bash!
$ sudo apt install libjsoncpp-dev
$ cd SVF
$ ./build.sh
```

### Build checkpoint and resotre tool

Install pre-requirsite packages and then compile it

```bash!
$ sudo apt install libprotobuf-dev libprotobuf-c-dev protobuf-c-compiler protobuf-compiler python3-protobuf libnl-3-dev libcap-dev  uuid-dev libbsd-dev
$ cd ~/Gecko/checkpoint_restore
$ make clean
$ make
```


### Build Ardupilot 

Gecko requires some modifications to ArduPilot—primarily in the build process, as well as changes related to the recovery block. To support this, we provide two customized versions of ArduPilot, which can be pulled by:


```bash!
$ cd ~
$ git clone
$ git clone
```
