cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../..)
include_directories(../../headers)
include_directories(../../files)
#add_subdirectory(src)
#add_subdirectory(include)

set(head2data_SOURCES
	head2data.cc
)

add_executable(head2data
	${head2data_SOURCES}
)

