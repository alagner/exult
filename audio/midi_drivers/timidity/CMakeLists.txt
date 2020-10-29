cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(../../../)
include_directories(../../../objs)
include_directories(../../../conf)
include_directories(../../../gump)
include_directories(../../../files)
include_directories(../../../shapes)
include_directories(../../../headers)

set(libtimidity_SOURCES
	timidity.cpp
	timidity.h
	timidity_common.cpp
	timidity_common.h
	timidity_controls.cpp
	timidity_controls.h
	timidity_filter.cpp
	timidity_filter.h
	timidity_instrum.cpp
	timidity_instrum.h
	timidity_mix.cpp
	timidity_mix.h
	timidity_output.cpp
	timidity_output.h
	timidity_playmidi.cpp
	timidity_playmidi.h
	timidity_readmidi.cpp
	timidity_readmidi.h
	timidity_resample.cpp
	timidity_resample.h
	timidity_sdl_a.cpp
	timidity_sdl_c.cpp
	timidity_tables.cpp
	timidity_tables.h
)

add_library(libtimidity OBJECT 
	${libtimidity_SOURCES}
)
