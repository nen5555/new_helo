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
include chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/compiler_depend.make

# Include the progress variables for this target.
include chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/progress.make

# Include the compile flags for this target's objects.
include chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/flags.make

chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o: chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/flags.make
chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o: /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/linkedlist_deque.cpp
chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o: chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o -MF CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o.d -o CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o -c /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/linkedlist_deque.cpp

chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.i"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/linkedlist_deque.cpp > CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.i

chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.s"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue/linkedlist_deque.cpp -o CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.s

# Object files for target linkedlist_deque
linkedlist_deque_OBJECTS = \
"CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o"

# External object files for target linkedlist_deque
linkedlist_deque_EXTERNAL_OBJECTS =

chapter_stack_and_queue/linkedlist_deque: chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/linkedlist_deque.cpp.o
chapter_stack_and_queue/linkedlist_deque: chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/build.make
chapter_stack_and_queue/linkedlist_deque: chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable linkedlist_deque"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linkedlist_deque.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/build: chapter_stack_and_queue/linkedlist_deque
.PHONY : chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/build

chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/clean:
	cd /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue && $(CMAKE_COMMAND) -P CMakeFiles/linkedlist_deque.dir/cmake_clean.cmake
.PHONY : chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/clean

chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/depend:
	cd /home/stone/hello-algo/codes/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stone/hello-algo/codes/cpp /home/stone/hello-algo/codes/cpp/chapter_stack_and_queue /home/stone/hello-algo/codes/cpp/build /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue /home/stone/hello-algo/codes/cpp/build/chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chapter_stack_and_queue/CMakeFiles/linkedlist_deque.dir/depend

