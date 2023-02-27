cmake_minimum_required(VERSION 3.20)
project(engine)

set(CXX_STANDARD "-std=c++17")
if (WIN32)
    set(CXX_STANDARD "/std:c++17")
endif()

add_subdirectory(third_party/png)
add_subdirectory(third_party/zlib)
