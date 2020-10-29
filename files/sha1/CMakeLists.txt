cmake_minimum_required(VERSION 3.5)


include_directories(.)
set(libsha1_SOURCES
	sha1.cpp
	sha1.h
)

add_library(libsha1 OBJECT ${libsha1_SOURCES})
