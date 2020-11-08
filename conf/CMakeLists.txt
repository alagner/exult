cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)

set(conf_SOURCES
	Configuration.cc
	Configuration.h
	XMLEntity.cc
	XMLEntity.h
)

add_library(conf OBJECT
	${conf_SOURCES}
)


set(confregres_SOURCES
	xmain.cc
)

add_executable(confregress
	${confregres_SOURCES}
	$<TARGET_OBJECTS:conf>
	$<TARGET_OBJECTS:u7file>
)

