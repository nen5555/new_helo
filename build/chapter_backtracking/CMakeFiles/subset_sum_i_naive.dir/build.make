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
include chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/compiler_depend.make

# Include the progress variables for this target.
include chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/progress.make

# Include the compile flags for this target's objects.
include chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/flags.make

chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o: chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/flags.make
chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o: /home/stone/hello-algo/codes/cpp/chapter_backtracking/subset_sum_i_naive.cpp
chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o: chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_backtracking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o -MF CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o.d -o CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o -c /home/stone/hello-algo/codes/cpp/chapter_backtracking/subset_sum_i_naive.cpp

chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.i"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_backtracking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stone/hello-algo/codes/cpp/chapter_backtracking/subset_sum_i_naive.cpp > CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.i

chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.s"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_backtracking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stone/hello-algo/codes/cpp/chapter_backtracking/subset_sum_i_naive.cpp -o CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.s

# Object files for target subset_sum_i_naive
subset_sum_i_naive_OBJECTS = \
"CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o"

# External object files for target subset_sum_i_naive
subset_sum_i_naive_EXTERNAL_OBJECTS =

chapter_backtracking/subset_sum_i_naive: chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/subset_sum_i_naive.cpp.o
chapter_backtracking/subset_sum_i_naive: chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/build.make
chapter_backtracking/subset_sum_i_naive: chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable subset_sum_i_naive"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_backtracking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subset_sum_i_naive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/build: chapter_backtracking/subset_sum_i_naive
.PHONY : chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/build

chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/clean:
	cd /home/stone/hello-algo/codes/cpp/build/chapter_backtracking && $(CMAKE_COMMAND) -P CMakeFiles/subset_sum_i_naive.dir/cmake_clean.cmake
.PHONY : chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/clean

chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/depend:
	cd /home/stone/hello-algo/codes/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stone/hello-algo/codes/cpp /home/stone/hello-algo/codes/cpp/chapter_backtracking /home/stone/hello-algo/codes/cpp/build /home/stone/hello-algo/codes/cpp/build/chapter_backtracking /home/stone/hello-algo/codes/cpp/build/chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chapter_backtracking/CMakeFiles/subset_sum_i_naive.dir/depend

