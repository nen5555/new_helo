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
include chapter_stack_and_queue/CMakeFiles/array_stack.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chapter_stack_and_queue/CMakeFiles/array_stack.dir/compiler_depend.make

# Include the progress variables for this target.
include chapter_stack_and_queue/CMakeFiles/array_stack.dir/progress.make

# Include the compile flags for this target's objects.
include chapter_stack_and_queue/CMakeFiles/array_stack.dir/flags.make

chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o: chapter_stack_and_queue/CMakeFiles/array_stack.dir/flags.make
chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o: /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/array_stack.cpp
chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o: chapter_stack_and_queue/CMakeFiles/array_stack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o -MF CMakeFiles/array_stack.dir/array_stack.cpp.o.d -o CMakeFiles/array_stack.dir/array_stack.cpp.o -c /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/array_stack.cpp

chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/array_stack.dir/array_stack.cpp.i"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/array_stack.cpp > CMakeFiles/array_stack.dir/array_stack.cpp.i

chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/array_stack.dir/array_stack.cpp.s"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/array_stack.cpp -o CMakeFiles/array_stack.dir/array_stack.cpp.s

# Object files for target array_stack
array_stack_OBJECTS = \
"CMakeFiles/array_stack.dir/array_stack.cpp.o"

# External object files for target array_stack
array_stack_EXTERNAL_OBJECTS =

chapter_stack_and_queue/array_stack: chapter_stack_and_queue/CMakeFiles/array_stack.dir/array_stack.cpp.o
chapter_stack_and_queue/array_stack: chapter_stack_and_queue/CMakeFiles/array_stack.dir/build.make
chapter_stack_and_queue/array_stack: chapter_stack_and_queue/CMakeFiles/array_stack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable array_stack"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/array_stack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chapter_stack_and_queue/CMakeFiles/array_stack.dir/build: chapter_stack_and_queue/array_stack
.PHONY : chapter_stack_and_queue/CMakeFiles/array_stack.dir/build

chapter_stack_and_queue/CMakeFiles/array_stack.dir/clean:
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && $(CMAKE_COMMAND) -P CMakeFiles/array_stack.dir/cmake_clean.cmake
.PHONY : chapter_stack_and_queue/CMakeFiles/array_stack.dir/clean

chapter_stack_and_queue/CMakeFiles/array_stack.dir/depend:
	cd /home/stone/hello-algo/codes/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stone/hello-algo/codes/cpp /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue /home/stone/hello-algo/codes/cpp/build /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue/CMakeFiles/array_stack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chapter_stack_and_queue/CMakeFiles/array_stack.dir/depend

