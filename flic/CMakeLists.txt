cmake_minimum_required(VERSION 3.5)

include_directories(../)
include_directories(../headers)
include_directories(../objs)
include_directories(../shapes)
include_directories(../files)
include_directories(../imagewin)

set(libflic_SOURCES
	playfli.cc
	playfli.h
)

add_library(libflic OBJECT
	${libflic_SOURCES}
)


