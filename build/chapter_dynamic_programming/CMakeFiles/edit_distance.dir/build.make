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
include chapter_dynamic_programming/CMakeFiles/edit_distance.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chapter_dynamic_programming/CMakeFiles/edit_distance.dir/compiler_depend.make

# Include the progress variables for this target.
include chapter_dynamic_programming/CMakeFiles/edit_distance.dir/progress.make

# Include the compile flags for this target's objects.
include chapter_dynamic_programming/CMakeFiles/edit_distance.dir/flags.make

chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o: chapter_dynamic_programming/CMakeFiles/edit_distance.dir/flags.make
chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o: /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/edit_distance.cpp
chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o: chapter_dynamic_programming/CMakeFiles/edit_distance.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o -MF CMakeFiles/edit_distance.dir/edit_distance.cpp.o.d -o CMakeFiles/edit_distance.dir/edit_distance.cpp.o -c /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/edit_distance.cpp

chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/edit_distance.dir/edit_distance.cpp.i"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/edit_distance.cpp > CMakeFiles/edit_distance.dir/edit_distance.cpp.i

chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/edit_distance.dir/edit_distance.cpp.s"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming/edit_distance.cpp -o CMakeFiles/edit_distance.dir/edit_distance.cpp.s

# Object files for target edit_distance
edit_distance_OBJECTS = \
"CMakeFiles/edit_distance.dir/edit_distance.cpp.o"

# External object files for target edit_distance
edit_distance_EXTERNAL_OBJECTS =

chapter_dynamic_programming/edit_distance: chapter_dynamic_programming/CMakeFiles/edit_distance.dir/edit_distance.cpp.o
chapter_dynamic_programming/edit_distance: chapter_dynamic_programming/CMakeFiles/edit_distance.dir/build.make
chapter_dynamic_programming/edit_distance: chapter_dynamic_programming/CMakeFiles/edit_distance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stone/hello-algo/codes/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable edit_distance"
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/edit_distance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chapter_dynamic_programming/CMakeFiles/edit_distance.dir/build: chapter_dynamic_programming/edit_distance
.PHONY : chapter_dynamic_programming/CMakeFiles/edit_distance.dir/build

chapter_dynamic_programming/CMakeFiles/edit_distance.dir/clean:
	cd /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming && $(CMAKE_COMMAND) -P CMakeFiles/edit_distance.dir/cmake_clean.cmake
.PHONY : chapter_dynamic_programming/CMakeFiles/edit_distance.dir/clean

chapter_dynamic_programming/CMakeFiles/edit_distance.dir/depend:
	cd /home/stone/hello-algo/codes/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stone/hello-algo/codes/cpp /home/stone/hello-algo/codes/cpp/chapter_dynamic_programming /home/stone/hello-algo/codes/cpp/build /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming /home/stone/hello-algo/codes/cpp/build/chapter_dynamic_programming/CMakeFiles/edit_distance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chapter_dynamic_programming/CMakeFiles/edit_distance.dir/depend

