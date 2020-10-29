cmake_minimum_required(VERSION 3.5)

project(Exult LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)

#TODO use Conan to pull-in SDL
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

#TODO same with vorbis -> Conan
#find_package(libvorbis REQUIRED)
include_directories(/usr/local/include)


add_compile_definitions(EXULT_DATADIR="/Library/Application\ Support/Exult/data")


add_subdirectory(files)
add_subdirectory(Audio)
