# Gecko
This repo contains the source code of Gecko, which is structured as follows:


```
./Gecko                   ## Main source code of Gecko  
├── ./SVF/               ## Source code for program analysis  
│   ├── ./tools/recovery_pass  ## Compartmentalization and data-flow integrity detection  
├── ./checkpoint_restore/      ## Source code for checkpointing and restore
```

## Setup 

Dependencies Installation:
```
$ sudo apt install cmake build-essential make texinfo bison flex \\ 
ninja-build git ncurses-dev texlive-full binutils-dev python-networkx \\ 
python-matplotlib python-pygraphviz python-serial 
```


LLVM Installation: \sysname is tested on \textsf{LLVM-13}. User can either install the package on ubuntu or compile from source code. Due to space constraints, please refer to the [official instructions](https://releases.llvm.org/13.0.0/docs/CMake.html) for more details.


Install jsoncpp
```
git clone https://github.com/open-source-parsers/jsoncpp.git
cd jsoncpp
mkdir build && cd build
cmake .. && make
sudo make install
```

## Run Gecko


#### Compile Time

Given CPS software such as ArduPilot, \sysname uses command line instructions to automatically compartmentalize and instrument the software.

```bash!
$ cd ./ardupilot_redcaps/
$ ./compartmentalization.sh
```

The compartmentalization result is in the file \textit{./build/sitl/compartments\_result.json}. The functions and variables are partitioned into different compartments (code and data regions).


Next, \sysname uses the following command line to automatically instrument the defense mechanism in the given application with our customized compiler. 


```bash!
$ ./instrumentation.sh
```

The final binary result is the file \textit{./build/sitl/bin/arducopter}. You can use the following command to check the instrumented attack detection codes.


#### Run time

Launching the ArduPilot simulation requires multiple commands, so we provide two scripts to simplify the process. 

The first script automatically configures the drone, launches the mission, and opens two panels to display simulation information. 


```bash!
$ cd /path/to/Gecko
$ ./launch_demo.sh
[Gecko] Using the native block.
[Gecko] Using the native block.
```

Please wait for about 1-3 minutes for the drone to begin executing the mission. Once the mission starts, you can run the second script, which is designed to trigger a program crash and then recover it from a checkpoint.  


![gecko_demo](./others/gecko_demo.png)



```
$ ./launch_attack_recovery.sh
[Gecko] The task is restored !!! 
With response time: xxx seconds
[Gecko] Using the recovery block.
[Gecko] Using the recovery block.
```


This will cause the program, namely _arducopter_, to crash and then restore it from a previously saved checkpoint. After recovery, the system transitions to a shadow compartment. This is indicated by continuous logs showing the use of the recovery block, as shown below:
