cmake_minimum_required(VERSION 3.5)


include_directories(.)
set(sha1_SOURCES
	sha1.cpp
	sha1.h
)

add_library(sha1 OBJECT ${sha1_SOURCES})
