cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../objs)
include_directories(../audio)
include_directories(../audio/midi_drivers)
include_directories(../conf)
include_directories(../gumps)
include_directories(../files)
include_directories(../headers)
include_directories(../shapes)
include_directories(../imagewin)

set(libgamegmr_SOURCES
	bggame.cc
	bggame.h
	sigame.cc
	sigame.h
	devgame.cc
	devgame.h
	modmgr.cc
	modmgr.h
)

add_library(libgamemgr OBJECT
	${libgamegmr_SOURCES}
)
