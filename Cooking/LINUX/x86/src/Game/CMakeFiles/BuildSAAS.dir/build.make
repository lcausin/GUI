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

# Utility rule file for BuildSAAS.

# Include the progress variables for this target.
include src/Game/CMakeFiles/BuildSAAS.dir/progress.make

src/Game/CMakeFiles/BuildSAAS: src/Game/Game
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Game && /opt/shine_sdk_external/bin/Tools/ShGamePackager --copy /tmp/saas_git_clone/tmpr1iSEO.xml build_local_zip_OpenGL3 /tmp/saas_git_clone/Cooking/LINUX/x86/src/Game/Game x86_64

BuildSAAS: src/Game/CMakeFiles/BuildSAAS
BuildSAAS: src/Game/CMakeFiles/BuildSAAS.dir/build.make

.PHONY : BuildSAAS

# Rule to build all files generated by this target.
src/Game/CMakeFiles/BuildSAAS.dir/build: BuildSAAS

.PHONY : src/Game/CMakeFiles/BuildSAAS.dir/build

src/Game/CMakeFiles/BuildSAAS.dir/clean:
	cd /tmp/saas_git_clone/Cooking/LINUX/x86/src/Game && $(CMAKE_COMMAND) -P CMakeFiles/BuildSAAS.dir/cmake_clean.cmake
.PHONY : src/Game/CMakeFiles/BuildSAAS.dir/clean

src/Game/CMakeFiles/BuildSAAS.dir/depend:
	cd /tmp/saas_git_clone/Cooking/LINUX/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/saas_git_clone /tmp/saas_git_clone/src/Game /tmp/saas_git_clone/Cooking/LINUX/x86 /tmp/saas_git_clone/Cooking/LINUX/x86/src/Game /tmp/saas_git_clone/Cooking/LINUX/x86/src/Game/CMakeFiles/BuildSAAS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Game/CMakeFiles/BuildSAAS.dir/depend

