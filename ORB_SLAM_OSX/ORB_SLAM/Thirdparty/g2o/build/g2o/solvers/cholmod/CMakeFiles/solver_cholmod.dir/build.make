# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build

# Include any dependencies generated for this target.
include g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/depend.make

# Include the progress variables for this target.
include g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/progress.make

# Include the compile flags for this target's objects.
include g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/flags.make

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/flags.make
g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o: ../g2o/solvers/cholmod/solver_cholmod.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o"
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o -c /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod/solver_cholmod.cpp

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.i"
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod/solver_cholmod.cpp > CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.i

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.s"
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod/solver_cholmod.cpp -o CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.s

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.requires:
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.requires

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.provides: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.requires
	$(MAKE) -f g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/build.make g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.provides.build
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.provides

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.provides.build: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o

# Object files for target solver_cholmod
solver_cholmod_OBJECTS = \
"CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o"

# External object files for target solver_cholmod
solver_cholmod_EXTERNAL_OBJECTS =

../lib/libg2o_solver_cholmod.dylib: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o
../lib/libg2o_solver_cholmod.dylib: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/build.make
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libcholmod.a
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libamd.a
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libcolamd.a
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libcamd.a
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libccolamd.a
../lib/libg2o_solver_cholmod.dylib: /opt/local/lib/libmetis.dylib
../lib/libg2o_solver_cholmod.dylib: /usr/local/lib/libsuitesparseconfig.a
../lib/libg2o_solver_cholmod.dylib: ../lib/libg2o_core.dylib
../lib/libg2o_solver_cholmod.dylib: ../lib/libg2o_stuff.dylib
../lib/libg2o_solver_cholmod.dylib: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../../../lib/libg2o_solver_cholmod.dylib"
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solver_cholmod.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/build: ../lib/libg2o_solver_cholmod.dylib
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/build

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/requires: g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/solver_cholmod.cpp.o.requires
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/requires

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/clean:
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod && $(CMAKE_COMMAND) -P CMakeFiles/solver_cholmod.dir/cmake_clean.cmake
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/clean

g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/depend:
	cd /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/g2o/solvers/cholmod /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod /Users/xinsun/Code/MyStuff/System/ORB_SLAM_OSX/ORB_SLAM_OSX/ORB_SLAM/Thirdparty/g2o/build/g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : g2o/solvers/cholmod/CMakeFiles/solver_cholmod.dir/depend

