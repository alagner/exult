cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)
include_directories(../imagewin)
include_directories(../audio)
include_directories(shapeinf)
include_directories(../data)
include_directories(../usecode)
include_directories(../objs)

add_subdirectory(shapeinf)

set(libshapes_SOURCES
	font.cc
	font.h
	fontgen.cc
	fontgen.h
	fontvga.cc
	fontvga.h
	items.cc
	items.h
	miscinf.cc
	miscinf.h
	pngio.cc
	pngio.h
	shapeinf.cc
	shapeinf.h
	shapevga.cc
	shapevga.h
	shapewrite.cc
	u7drag.cc
	u7drag.h
	vgafile.cc
	vgafile.h
)

add_library(libshapes OBJECT
	${libshapes_SOURCES}
)




