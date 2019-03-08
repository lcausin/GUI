cmake_minimum_required(VERSION 3.7)

project(TestGUI)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)

# Compiler flagsif (CMAKE_COMPILER_IS_GNUCXX)	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions -fno-rtti")endif(CMAKE_COMPILER_IS_GNUCXX)# Warnings
if (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_SCL_SECURE_NO_WARNINGS") # use /wd4996 instead ?
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /FORCE:MULTIPLE")
else (MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif (MSVC)

if(CMAKE_SYSTEM_NAME MATCHES "WindowsStore")	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /ZW")elseif(CMAKE_SYSTEM_NAME MATCHES "Android")	set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--no-undefined") # treats undefined symbols as errorendif(CMAKE_SYSTEM_NAME MATCHES "WindowsStore")# Find shine Engine libraries
OPTION(SHINE_INTERNAL "Use Internal ShSDK libraries")
IF(SHINE_INTERNAL)
SET(USE_MODULE "NO_MODULE")
ELSE(SHINE_INTERNAL)
SET(USE_MODULE "")
ENDIF(SHINE_INTERNAL)

LIST(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

find_package(ShSDK REQUIRED StubUserSystem ShEntryPoint ${USE_MODULE})

if(NOT SHINE_INTERNAL)	find_library(SHCORE_EDITOR NAMES ShCore_Editor HINTS $ENV{SHINE_BASE_DIR})	find_library(SHSDK_EDITOR NAMES ShSDK_Editor HINTS $ENV{SHINE_BASE_DIR})	find_library(SHCOMPILER_EDITOR NAMES ShCompiler_Editor HINTS $ENV{SHINE_BASE_DIR})	set(SHSDK_EDITOR_LIBRARIES "${SHCORE_EDITOR}" "${SHSDK_EDITOR}" "${SHCOMPILER_EDITOR}" CACHE PATH "ShSDK Editor libraries") # ugly	set(SHINE_EDITOR_EXT_DIR "$ENV{SHINE_BASE_DIR}/Bin/Extensions" CACHE PATH "Extension directory") # ugly tooendif(NOT SHINE_INTERNAL)# Include some cmake helpers
include(cmake/Master.cmake)
include(cmake/TargetBuildSAAS.cmake)

ConfigureShineSAAS()

add_subdirectory(src)
