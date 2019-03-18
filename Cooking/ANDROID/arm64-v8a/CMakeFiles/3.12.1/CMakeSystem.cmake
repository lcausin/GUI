set(CMAKE_HOST_SYSTEM "Linux-4.18.0-16-generic")
set(CMAKE_HOST_SYSTEM_NAME "Linux")
set(CMAKE_HOST_SYSTEM_VERSION "4.18.0-16-generic")
set(CMAKE_HOST_SYSTEM_PROCESSOR "x86_64")

include("/mnt/shine/Shine/MainLine/cmake/toolchains/Android-arm64-v8a.cmake")

set(CMAKE_SYSTEM "Android-21")
set(CMAKE_SYSTEM_NAME "Android")
set(CMAKE_SYSTEM_VERSION "21")
set(CMAKE_SYSTEM_PROCESSOR "aarch64")

set(CMAKE_ANDROID_NDK "/opt/android-ndk")
set(CMAKE_ANDROID_STANDALONE_TOOLCHAIN "")
set(CMAKE_ANDROID_ARCH "arm64")
set(CMAKE_ANDROID_ARCH_ABI "arm64-v8a")
set(CMAKE_ANDROID_ARCH_HEADER_TRIPLE "aarch64-linux-android")
set(CMAKE_ANDROID_NDK_DEPRECATED_HEADERS "1")

set(CMAKE_CROSSCOMPILING "TRUE")

set(CMAKE_SYSTEM_LOADED 1)
