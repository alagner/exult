cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../objs)
include_directories(../headers)

set(libpathfinder_SOURCES
	Astar.cc
	Astar.h
	PathFinder.cc
	PathFinder.h
	Zombie.cc
	Zombie.h
	path.cc
)

add_library(libpathfinder OBJECT
	${libpathfinder_SOURCES}
)
