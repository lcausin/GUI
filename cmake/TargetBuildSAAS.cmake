cmake_minimum_required(VERSION 3.2.1)

message("SHINE_BASE_DIR = $ENV{SHINE_BASE_DIR}")
find_program(SHGAMEPACKAGER_EXECUTABLE ShGamePackager HINTS "${SHINE_TOOLS_DIR}" "$ENV{SHINE_BASE_DIR}" PATHS "/usr/local/" PATH_SUFFIXES "" "bin/tools" "bin/Tools" "Bin/tools" "/Bin/Tools"
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_CMAKE_FIND_ROOT_PATH)

if(NOT SHGAMEPACKAGER_EXECUTABLE)
    # not found
	message("Couldn't find ShGamePackager")
endif(NOT SHGAMEPACKAGER_EXECUTABLE)

# generation du Manifest, des icones etc ...
macro(ConfigureShineSAAS)

	if (SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))

		execute_process(COMMAND ${SHGAMEPACKAGER_EXECUTABLE} "--configure" ${BUILD_FILE_PATH} ${BUILD_CONFIG_NAME}
			RESULT_VARIABLE res_var
			OUTPUT_FILE "saas_file")
			
		if(NOT "${res_var}" STREQUAL "0")
			message("ShGamePackager --configure failed with error '${res_var}'")
		endif(NOT "${res_var}" STREQUAL "0")
	
	else (SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))
		message("Missing CMake opttions -DBUILD_FILE_PATH='Build_File_Path' -DBUILD_CONFIG_NAME='Configuration_Name_In_Build_File'")
	endif(SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))

endmacro()

# Copy executable or library into packaging directory
macro(CopyToShineSAAS _TargetName)
	
	if (SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))
	
		if (ANDROID)
			set(BUILD_ARCHITECTURE ${ANDROID_ABI})
		elseif(CMAKE_SYSTEM_NAME MATCHES "Linux")
			string(REPLACE "-linux-gnu" "" BUILD_ARCHITECTURE ${CMAKE_LIBRARY_ARCHITECTURE})
		endif()
	
		add_custom_target(BuildSAAS
			COMMAND ${SHGAMEPACKAGER_EXECUTABLE} "--copy" ${BUILD_FILE_PATH} ${BUILD_CONFIG_NAME} $<TARGET_FILE:${_TargetName}> ${BUILD_ARCHITECTURE}
			DEPENDS ${_TargetName})
	else (SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))
		message("Target AutoBuild deactivated.")
	endif(SHGAMEPACKAGER_EXECUTABLE AND (DEFINED BUILD_FILE_PATH) AND (DEFINED BUILD_CONFIG_NAME))
	
endmacro()
