cmake_minimum_required(VERSION 3.5)

include_directories(.)
set(minizip_SOURCES
	zip.cc
	zip.h
	unzip.cc
	unzip.h
)

add_library(minizip OBJECT ${minizip_SOURCES})
