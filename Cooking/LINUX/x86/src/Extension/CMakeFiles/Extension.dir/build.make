# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /opt/cmake-3.13.4-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.13.4-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/saas_git_clone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/saas_git_clone/Cooking/LINUX/x86

# Include any dependencies generated for this target.
include src/Extension/CMakeFiles/Extension.dir/depend.make

# Include the progress variables for this target.
include src/Extension/CMakeFiles/Extension.dir/progress.make

# Include the compile flags for this target's objects.
include src/Extension/CMakeFiles/Extension.dir/flags.make

src/Extension/CMakeFiles/Extension.dir/Extension.cpp.o: src/Extension/CMakeFiles/Extension.dir/flags.make
src/Extension/CMakeFiles/Extension.dir/Extension.cpp.o: ../../../src/Extension/Extension.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/saas_git_clone/Cooking/LINUX/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Extension/CMakeFiles/Extension.dir/Extension.cpp.o"
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Extension.dir/Extension.cpp.o -c /tmp/saas_git_clone/src/Extension/Extension.cpp

src/Extension/CMakeFiles/Extension.dir/Extension.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Extension.dir/Extension.cpp.i"
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/saas_git_clone/src/Extension/Extension.cpp > CMakeFiles/Extension.dir/Extension.cpp.i

src/Extension/CMakeFiles/Extension.dir/Extension.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Extension.dir/Extension.cpp.s"
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/saas_git_clone/src/Extension/Extension.cpp -o CMakeFiles/Extension.dir/Extension.cpp.s

# Object files for target Extension
Extension_OBJECTS = \
"CMakeFiles/Extension.dir/Extension.cpp.o"

# External object files for target Extension
Extension_EXTERNAL_OBJECTS = \
"/tmp/saas_git_clone/Cooking/LINUX/x86/src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o"

/opt/shine_sdk_external/Bin/Extensions/libExtension.so: src/Extension/CMakeFiles/Extension.dir/Extension.cpp.o
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: src/Plugins/Plugin/CMakeFiles/Plugin_Editor.dir/Plugin.cpp.o
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: src/Extension/CMakeFiles/Extension.dir/build.make
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: /opt/shine_sdk_external/lib/libShCore_Editor.so
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: /opt/shine_sdk_external/lib/libShSDK_Editor.so
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: /opt/shine_sdk_external/lib/libShCompiler_Editor.so
/opt/shine_sdk_external/Bin/Extensions/libExtension.so: src/Extension/CMakeFiles/Extension.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/saas_git_clone/Cooking/LINUX/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /opt/shine_sdk_external/Bin/Extensions/libExtension.so"
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Extension.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Extension/CMakeFiles/Extension.dir/build: /opt/shine_sdk_external/Bin/Extensions/libExtension.so

.PHONY : src/Extension/CMakeFiles/Extension.dir/build

src/Extension/CMakeFiles/Extension.dir/clean:
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension && $(CMAKE_COMMAND) -P CMakeFiles/Extension.dir/cmake_clean.cmake
.PHONY : src/Extension/CMakeFiles/Extension.dir/clean

src/Extension/CMakeFiles/Extension.dir/depend:
	cd /tmp/saas_git_clone/Cooking/LINUX/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/saas_git_clone /tmp/saas_git_clone/src/Extension /tmp/saas_git_clone/Cooking/LINUX/x86 /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension /tmp/saas_git_clone/Cooking/LINUX/x86/src/Extension/CMakeFiles/Extension.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Extension/CMakeFiles/Extension.dir/depend

