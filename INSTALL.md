# Installation

This document provides step-by-step instructions for installing Gecko from scratch on your local machine.

## Install Required Dependencies

Most of the necessary packages can be installed using `apt` and `pip`.

Install apt packages:

```bash
$ sudo apt update
$ sudo apt install cmake build-essential make texinfo bison flex ninja-build git gitk git-gui ncurses-dev texlive-full binutils-dev python3-networkx python3-matplotlib python3-pygraphviz python3-serial python3-pip python3-distutils python-is-python3 tmux
```


Install pip packages:

```bash
pip install community pydot opencv-python 
```

**Trouble Shooting**:

You may meet errors when you try to install xxx

## Install LLVM

Gecko is built on top of LLVM 13. The following instructions are sourced from the official LLVM website: [https://releases.llvm.org/13.0.0/docs/CMake.html](https://releases.llvm.org/13.0.0/docs/CMake.html).


Install some prerequisite packages:

```bash
$ sudo apt install -y build-essential cmake ninja-build git curl python3 zlib1g-dev libedit-dev libncurses5-dev libxml2-dev libssl-dev libtool-bin texinfo libexpat1-dev 
```

To enable the LLVM pass, we enable the gold plugin, which requires `binutils` to build

```bash
$ cd ~
$ git clone --depth 1 git://sourceware.org/git/binutils-gdb.git binutils
```

Pull and compile the llvm-project:

```bash
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
       -DLLVM_BINUTILS_INCDIR=~/binutils/include/
$ make
```

Once the compilation is complete, add LLVM to your `PATH` environment variable by appending the following line to your `~/.bashrc` file. Then, run `source ~/.bashrc` to apply the changes.

```bash
export LLVM_DIR=/path/to/llvm-project/build # e.g.,/home/gecko/llvm-project/build
export LT_LLVM_INSTALL_DIR=/path/to/llvm-project/build
export PATH=$LLVM_DIR/bin:$PATH
```


## Install Gecko

Pull Gecko repository:

```bash
$ cd ~
$ git clone https://github.com/WUSTL-CSPL/Gecko.git
```


### Build SVF

Our LLVM pass relies on jsoncpp in compartmentalization step

```bash
$ sudo apt install libjsoncpp-dev libtinfo5
$ cd ~/Gecko/SVF
$ ./build.sh
```

### Build checkpoint and resotre tool

Install pre-requirsite packages and then compile it

```bash
$ sudo apt install libprotobuf-dev libprotobuf-c-dev protobuf-c-compiler protobuf-compiler python3-protobuf libnl-3-dev libcap-dev  uuid-dev libbsd-dev libnftables-dev libnet1-dev gnutls-dev libdrm-dev
$ cd ~/Gecko/checkpoint_restore
$ make clean
$ make
# Set the capability of checkpoint_restore
$ sudo setcap cap_sys_admin+eip ~/Gecko/checkpoint_restore/criu/criu
```


### Build Ardupilot 

Gecko requires some modifications to ArduPilot—primarily in the build process, as well as changes related to the recovery block. To support this, we provide two customized versions of ArduPilot, which can be pulled by:


```bash
$ cd ~
$ git clone https://github.com/a01ixxx/ardupilot_redcaps.git
$ git clone https://github.com/a01ixxx/ardupilot_recovery.git
```

Install the dependency:

```bash
$ cd ~/ardupilot_recovery
$ Tools/environment_install/install-prereqs-ubuntu.sh -y
$ sudo apt-get install libgtk-3-dev libwebkit2gtk-4.0-dev libjpeg-dev libtiff-dev libsdl1.2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
$ pip install MAVProxy wxPython 
# Add this statement into ~/.bashrc
export PATH=$PATH:~/.local/bin
# Reload the path
$ source ~/.bashrc
$. ~/.profile
```

Compile ArduPilot:
```bash
$ cd ~/ardupilot_recovery
$ ./waf configure --board sitl
$ ./waf copter
```

At this point, the environment setup is complete. You can now follow the instructions in the README.md to run the demo.
