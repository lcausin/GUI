add_executable(Game WIN32 Game.cpp Game.h)

set_property(TARGET Game PROPERTY FOLDER "Runtime")
set_property(TARGET Game APPEND PROPERTY COMPILE_DEFINITIONS "${SHSDK_COMPILE_DEFINITIONS}")
set_property(TARGET Game APPEND PROPERTY COMPILE_FLAGS "${SHSDK_COMPILE_FLAGS}")
set_property(TARGET Game APPEND PROPERTY COMPILE_DEFINITIONS "SH_$<UPPER_CASE:$<CONFIG>>=1")

target_link_libraries(Game PRIVATE "${SHSDK_LIBRARIES}" Plugin) # link with plugins
target_include_directories(Game PRIVATE $<TARGET_PROPERTY:Plugin,INTERFACE_INCLUDE_DIRECTORIES> "${SHSDK_INCLUDE_DIRS}")

CopyToShineSAAS(Game)
