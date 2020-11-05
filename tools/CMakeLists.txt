cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)
include_directories(../usecode)
include_directories(../shapes)
include_directories(../imagewin)
include_directories(../conf)

set(expack_SOURCES
	expack.cc
)

add_executable(expack
	${expack_SOURCES}
	$<TARGET_OBJECTS:libu7file>
)
#TODO other tools!!!!
