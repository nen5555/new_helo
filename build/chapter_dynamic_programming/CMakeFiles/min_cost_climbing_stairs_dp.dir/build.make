# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stone/hello-algo/codes/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stone/hello-algo/codes/cpp/build

# Include any dependencies generated for this target.
include chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/compiler_depend.make

# Include the progress variables for this target.
include chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/progress.make

# Include the compile flags for this target's objects.
include chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/flags.make

chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o: chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/flags.make
chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o: /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/min_cost_climbing_stairs_dp.cpp
chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o: chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o -MF CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o.d -o CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o -c /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/min_cost_climbing_stairs_dp.cpp

chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.i"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/min_cost_climbing_stairs_dp.cpp > CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.i

chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.s"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/min_cost_climbing_stairs_dp.cpp -o CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.s

# Object files for target min_cost_climbing_stairs_dp
min_cost_climbing_stairs_dp_OBJECTS = \
"CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o"

# External object files for target min_cost_climbing_stairs_dp
min_cost_climbing_stairs_dp_EXTERNAL_OBJECTS =

chapter_dynamic_programming/min_cost_climbing_stairs_dp: chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/min_cost_climbing_stairs_dp.cpp.o
chapter_dynamic_programming/min_cost_climbing_stairs_dp: chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/build.make
chapter_dynamic_programming/min_cost_climbing_stairs_dp: chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable min_cost_climbing_stairs_dp"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/min_cost_climbing_stairs_dp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/build: chapter_dynamic_programming/min_cost_climbing_stairs_dp
.PHONY : chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/build

chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/clean:
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && $(CMAKE_COMMAND) -P CMakeFiles/min_cost_climbing_stairs_dp.dir/cmake_clean.cmake
.PHONY : chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/clean

chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/depend:
	cd /home/stone/hello-algo/codes/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stone/hello-algo/codes/cpp /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming /home/stone/hello-algo/codes/cpp/build /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chapter_dynamic_programming/CMakeFiles/min_cost_climbing_stairs_dp.dir/depend

