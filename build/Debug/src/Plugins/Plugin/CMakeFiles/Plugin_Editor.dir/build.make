# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /home/lcausin/Documents/GUI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lcausin/Documents/GUI/build/Debug

# Include any dependencies generated for this target.
include src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/depend.make

# Include the progress variables for this target.
include src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/progress.make

# Include the compile flags for this target's objects.
include src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/flags.make

src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o: src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/flags.make
src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o: ../../src/Plugins/Plugin/Plugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lcausin/Documents/GUI/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o"
	cd /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o -c /home/lcausin/Documents/GUI/src/Plugins/Plugin/Plugin.cpp

src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Plugin_Editor.dir/Plugin.cpp.i"
	cd /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lcausin/Documents/GUI/src/Plugins/Plugin/Plugin.cpp > CMakeFiles/Plugin_Editor.dir/Plugin.cpp.i

src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Plugin_Editor.dir/Plugin.cpp.s"
	cd /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lcausin/Documents/GUI/src/Plugins/Plugin/Plugin.cpp -o CMakeFiles/Plugin_Editor.dir/Plugin.cpp.s

Plugin_Editor: src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o
Plugin_Editor: src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/build.make

.PHONY : Plugin_Editor

# Rule to build all files generated by this target.
src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/build: Plugin_Editor

.PHONY : src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/build

src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/clean:
	cd /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin && $(CMAKE_COMMAND) -P CMakeFiles/Plugin_Editor.dir/cmake_clean.cmake
.PHONY : src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/clean

src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/depend:
	cd /home/lcausin/Documents/GUI/build/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lcausin/Documents/GUI /home/lcausin/Documents/GUI/src/Plugins/Plugin /home/lcausin/Documents/GUI/build/Debug /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin /home/lcausin/Documents/GUI/build/Debug/src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/depend

