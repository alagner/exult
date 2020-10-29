cmake_minimum_required(VERSION 3.5)

project(Exult LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)

add_compile_definitions(EXULT_DATADIR="/Library/Application\ Support/Exult/data")


include_directories(.)
include_directories(headers)
add_subdirectory(files)
