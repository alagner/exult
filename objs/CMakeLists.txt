cmake_minimum_required(VERSION 3.5)
include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../imagewin)
include_directories(../shapes)
include_directories(../shapes/shapeinf)
include_directories(../pathfinder)
include_directories(../files)
include_directories(../server)
include_directories(../audio)
include_directories(../audio/midi_drivers)
include_directories(../usecode)

set(libobjs_SOURCES
	animate.cc
	animate.h
	barge.cc
	barge.h
	chunks.cc
	chunks.h
	chunkter.cc
	chunkter.h
	citerate.h
	contain.cc
	contain.h
	egg.cc
	egg.h
	find_nearby.h
	flags.h
	iregobjs.cc
	iregobjs.h
	mappatch.cc
	mappatch.h
	objiter.h
	objiter.cc
	objlist.h
	objs.cc
	objs.h
	ordinfo.h
	spellbook.cc
	spellbook.h
	virstone.cc
	virstone.h
	jawbone.cc
	jawbone.h
	objnames.cc
)

add_library(libobjs OBJECT
	${libobjs_SOURCES}
)

