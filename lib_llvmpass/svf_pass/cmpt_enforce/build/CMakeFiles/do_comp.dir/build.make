# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build

# Include any dependencies generated for this target.
include CMakeFiles/do_comp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/do_comp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/do_comp.dir/flags.make

CMakeFiles/do_comp.dir/HexboxApplication.o: CMakeFiles/do_comp.dir/flags.make
CMakeFiles/do_comp.dir/HexboxApplication.o: ../HexboxApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/do_comp.dir/HexboxApplication.o"
	/usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/do_comp.dir/HexboxApplication.o -c /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/HexboxApplication.cpp

CMakeFiles/do_comp.dir/HexboxApplication.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/do_comp.dir/HexboxApplication.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/HexboxApplication.cpp > CMakeFiles/do_comp.dir/HexboxApplication.i

CMakeFiles/do_comp.dir/HexboxApplication.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/do_comp.dir/HexboxApplication.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/HexboxApplication.cpp -o CMakeFiles/do_comp.dir/HexboxApplication.s

# Object files for target do_comp
do_comp_OBJECTS = \
"CMakeFiles/do_comp.dir/HexboxApplication.o"

# External object files for target do_comp
do_comp_EXTERNAL_OBJECTS =

libdo_comp.so: CMakeFiles/do_comp.dir/HexboxApplication.o
libdo_comp.so: CMakeFiles/do_comp.dir/build.make
libdo_comp.so: CMakeFiles/do_comp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libdo_comp.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/do_comp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/do_comp.dir/build: libdo_comp.so

.PHONY : CMakeFiles/do_comp.dir/build

CMakeFiles/do_comp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/do_comp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/do_comp.dir/clean

CMakeFiles/do_comp.dir/depend:
	cd /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build /home/ao/Projects/recovery/lib_llvmpass/compartment/do_comp/build/CMakeFiles/do_comp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/do_comp.dir/depend

