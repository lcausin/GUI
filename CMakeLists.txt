cmake_minimum_required(VERSION 3.1)

project(TestGUILCausin)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)

if (CMAKE_COMPILER_IS_GNUCXX)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions -fno-rtti")
endif(CMAKE_COMPILER_IS_GNUCXX)

# Warnings
if (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_SCL_SECURE_NO_WARNINGS") # use /wd4996 instead ?
else (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif (MSVC)

# Find shine Engine libraries
option(SHINE_INTERNAL "Use Internal ShSDK libraries")
if(SHINE_INTERNAL)
	set(USE_MODULE "NO_MODULE")
else(SHINE_INTERNAL)
	set(USE_MODULE "")
endif(SHINE_INTERNAL)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

find_package(ShSDK REQUIRED StubUserSystem ShEntryPoint ${USE_MODULE})
if(NOT SHINE_INTERNAL)
	find_library(SHCORE_EDITOR NAMES ShCore_Editor HINTS $ENV{SHINE_BASE_DIR})
	find_library(SHSDK_EDITOR NAMES ShSDK_Editor HINTS $ENV{SHINE_BASE_DIR})
	find_library(SHCOMPILER_EDITOR NAMES ShCompiler_Editor HINTS $ENV{SHINE_BASE_DIR})
	set(SHSDK_EDITOR_LIBRARIES "${SHCORE_EDITOR}" "${SHSDK_EDITOR}" "${SHCOMPILER_EDITOR}" CACHE PATH "ShSDK Editor libraries") # ugly
	set(SHINE_EDITOR_EXT_DIR "$ENV{SHINE_BASE_DIR}/Bin/Extensions" CACHE PATH "Extension directory") # ugly too
endif(NOT SHINE_INTERNAL)

# Include some cmake helpers
include(cmake/Master.cmake)
include(cmake/TargetBuildSAAS.cmake)

ConfigureShineSAAS()

add_subdirectory(src)
