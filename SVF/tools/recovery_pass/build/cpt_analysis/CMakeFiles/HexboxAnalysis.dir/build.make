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
CMAKE_SOURCE_DIR = /home/ao/Projects/recovery/SVF/tools/recovery_pass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ao/Projects/recovery/SVF/tools/recovery_pass/build

# Include any dependencies generated for this target.
include cpt_analysis/CMakeFiles/HexboxAnalysis.dir/depend.make

# Include the progress variables for this target.
include cpt_analysis/CMakeFiles/HexboxAnalysis.dir/progress.make

# Include the compile flags for this target's objects.
include cpt_analysis/CMakeFiles/HexboxAnalysis.dir/flags.make

cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o: cpt_analysis/CMakeFiles/HexboxAnalysis.dir/flags.make
cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o: ../cpt_analysis/HexboxAnalysis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ao/Projects/recovery/SVF/tools/recovery_pass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o"
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o -c /home/ao/Projects/recovery/SVF/tools/recovery_pass/cpt_analysis/HexboxAnalysis.cpp

cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.i"
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ao/Projects/recovery/SVF/tools/recovery_pass/cpt_analysis/HexboxAnalysis.cpp > CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.i

cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.s"
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ao/Projects/recovery/SVF/tools/recovery_pass/cpt_analysis/HexboxAnalysis.cpp -o CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.s

# Object files for target HexboxAnalysis
HexboxAnalysis_OBJECTS = \
"CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o"

# External object files for target HexboxAnalysis
HexboxAnalysis_EXTERNAL_OBJECTS =

cpt_analysis/libHexboxAnalysis.so: cpt_analysis/CMakeFiles/HexboxAnalysis.dir/HexboxAnalysis.o
cpt_analysis/libHexboxAnalysis.so: cpt_analysis/CMakeFiles/HexboxAnalysis.dir/build.make
cpt_analysis/libHexboxAnalysis.so: cpt_analysis/CMakeFiles/HexboxAnalysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ao/Projects/recovery/SVF/tools/recovery_pass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libHexboxAnalysis.so"
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HexboxAnalysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpt_analysis/CMakeFiles/HexboxAnalysis.dir/build: cpt_analysis/libHexboxAnalysis.so

.PHONY : cpt_analysis/CMakeFiles/HexboxAnalysis.dir/build

cpt_analysis/CMakeFiles/HexboxAnalysis.dir/clean:
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis && $(CMAKE_COMMAND) -P CMakeFiles/HexboxAnalysis.dir/cmake_clean.cmake
.PHONY : cpt_analysis/CMakeFiles/HexboxAnalysis.dir/clean

cpt_analysis/CMakeFiles/HexboxAnalysis.dir/depend:
	cd /home/ao/Projects/recovery/SVF/tools/recovery_pass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ao/Projects/recovery/SVF/tools/recovery_pass /home/ao/Projects/recovery/SVF/tools/recovery_pass/cpt_analysis /home/ao/Projects/recovery/SVF/tools/recovery_pass/build /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis /home/ao/Projects/recovery/SVF/tools/recovery_pass/build/cpt_analysis/CMakeFiles/HexboxAnalysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpt_analysis/CMakeFiles/HexboxAnalysis.dir/depend

