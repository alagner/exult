cmake_minimum_required(VERSION 3.5)

add_compile_definitions(MT32EMU_VERSION_MAJOR=2)
add_compile_definitions(MT32EMU_VERSION_MINOR=0)
add_compile_definitions(MT32EMU_VERSION_PATCH=0)
add_compile_definitions(MT32EMU_VERSION="2.0.0")
add_compile_definitions(MT32EMU_EXPORT_TYPE=0)
add_compile_definitions(MT32EMU_API_TYPE=0)

include_directories(.)
include_directories(../../../objs)
include_directories(../../../conf)
include_directories(../../../gump)
include_directories(../../../files)
include_directories(../../../shapes)

set(libmt32emu_SOURCES
	Analog.cpp
	Analog.h
	BReverbModel.cpp
	BReverbModel.h
	Enumerations.h
	File.cpp
	File.h
	FileStream.cpp
	FileStream.h
	globals.h
	internals.h
	LA32FloatWaveGenerator.h
	LA32Ramp.cpp
	LA32Ramp.h
	LA32WaveGenerator.cpp
	LA32WaveGenerator.h
	MemoryRegion.h
	MidiEventQueue.h
	MidiStreamParser.cpp
	MidiStreamParser.h
	mmath.h
	mt32emu.h
	Part.cpp
	Part.h
	Partial.cpp
	Partial.h
	PartialManager.cpp
	PartialManager.h
	Poly.cpp
	Poly.h
	ROMInfo.cpp
	ROMInfo.h
	Structures.h
	Synth.cpp
	Synth.h
	Tables.cpp
	Tables.h
	TVA.cpp
	TVA.h
	TVF.cpp
	TVF.h
	TVP.cpp
	TVP.h
	Types.h
)

add_library(libmt32emu OBJECT 
	${libmt32emu_SOURCES}
)
