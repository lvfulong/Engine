cmake_minimum_required(VERSION 3.20)
project(donkey)
message("Top level CMakeLists.txt")
add_library(message
  STATIC
    test.h
    test.cpp
  )
