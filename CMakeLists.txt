cmake_minimum_required(VERSION 3.1)

project(TestGUI)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)

# Warnings
if (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_SCL_SECURE_NO_WARNINGS") # use /wd4996 instead ?
else (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif (MSVC)

# Find shine Engine libraries
OPTION(SHINE_INTERNAL "Use Internal ShSDK libraries")
IF(SHINE_INTERNAL)
SET(USE_MODULE "NO_MODULE")
ELSE(SHINE_INTERNAL)
SET(USE_MODULE "")
ENDIF(SHINE_INTERNAL)

LIST(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

find_package(ShSDK REQUIRED StubUserSystem ShEntryPoint ${USE_MODULE})

find_library(SHCORE_EDITOR NAMES ShCore_Editor HINTS $ENV{SHINE_BASE_DIR})
find_library(SHSDK_EDITOR NAMES ShSDK_Editor HINTS $ENV{SHINE_BASE_DIR})
find_library(SHCOMPILER_EDITOR NAMES ShCompiler_Editor HINTS $ENV{SHINE_BASE_DIR})
set(SHSDK_EDITOR_LIBRARIES "${SHCORE_EDITOR}" "${SHSDK_EDITOR}" "${SHCOMPILER_EDITOR}" CACHE PATH "ShSDK Editor libraries") # ugly
set(SHINE_EDITOR_EXT_DIR "$ENV{SHINE_BASE_DIR}/Bin/Extensions" CACHE PATH "Extension directory") # ugly too

# Include some cmake helpers
include(cmake/Master.cmake)
include(cmake/TargetBuildSAAS.cmake)

ConfigureShineSAAS()

add_subdirectory(src)
