cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)

set(libconf_SOURCES
	Configuration.cc
	Configuration.h
	XMLEntity.cc
	XMLEntity.h
)

add_library(libconf OBJECT
	${libconf_SOURCES}
)


set(confregres_SOURCES
	xmain.cc
)

add_executable(confregress
	${confregres_SOURCES}
	$<TARGET_OBJECTS:libconf>
	$<TARGET_OBJECTS:libu7file>
)

