cmake_minimum_required(VERSION 3.26)
project(zygisk_module_sample_cmake)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS off)
set(CMAKE_VISIBILITY_INLINES_HIDDEN on)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)

# use prebuilt libcxx.a
#set(LIBCXX_PATH "/path/to/libcxx")
#include_directories(${LIBCXX_PATH}/include)
#include_directories(${LIBCXX_PATH}/src)
#link_directories(${LIBCXX_PATH}/libs/${CMAKE_ANDROID_ARCH_ABI})

# build cxx source
add_subdirectory(libcxx)
include_directories(libcxx/include)
include_directories(libcxx/include/src)

add_library(example SHARED example.cpp)

target_link_libraries(example log cxx)
