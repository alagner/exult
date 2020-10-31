cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../..)
include_directories(../../headers)
include_directories(../../files)

set(libshapeinf_SOURCES
	ammoinf.cc
	ammoinf.h
	aniinf.cc
	aniinf.h
	armorinf.cc
	armorinf.h
	bodyinf.cc
	bodyinf.h
	continf.cc
	continf.h
	effhpinf.cc
	effhpinf.h
	expinf.cc
	expinf.h
	frnameinf.cc
	frnameinf.h
	frflags.cc
	frflags.h
	frusefun.cc
	frusefun.h
	lightinf.cc
	lightinf.h
	monstinf.cc
	monstinf.h
	npcdollinf.cc
	npcdollinf.h
	objdollinf.cc
	objdollinf.h
	sfxinf.cc
	sfxinf.h
	warminf.cc
	warminf.h
	weaponinf.cc
	weaponinf.h
)

add_library(libshapeinf OBJECT
	${libshapeinf_SOURCES}
)


