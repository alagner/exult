cmake_minimum_required(VERSION 3.5)

include_directories(.)
set(libminizip_SOURCES
	zip.cc
	zip.h
	unzip.cc
	unzip.h
)

add_library(libminizip OBJECT ${libminizip_SOURCES})
