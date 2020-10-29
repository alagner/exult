cmake_minimum_required(VERSION 3.5)




include_directories(.)
include_directories(../..)
include_directories(../../objs)
include_directories(../../conf)
include_directories(../../gump)
include_directories(../../files)
include_directories(../../shapes)
include_directories(../../headers)
include_directories(../../imagewin)
add_subdirectory(timidity)
add_subdirectory(mt32emu)


set(libmidi_drivers_SOURCES
	ALSAMidiDriver.cpp
	ALSAMidiDriver.h
	CoreAudioMidiDriver.cpp
	CoreAudioMidiDriver.h
	CoreMidiDriver.cpp
	CoreMidiDriver.h
	fmopl.cpp
	fmopl.h
	FMOplMidiDriver.cpp
	FMOplMidiDriver.h
	LowLevelMidiDriver.cpp
	LowLevelMidiDriver.h
	MidiDriver.cpp
	MidiDriver.h
	MT32EmuMidiDriver.cpp
	MT32EmuMidiDriver.h
	TimidityMidiDriver.cpp
	TimidityMidiDriver.h
	UnixSeqMidiDriver.cpp
	UnixSeqMidiDriver.h
	WindowsMidiDriver.cpp
	WindowsMidiDriver.h
	XMidiEvent.h
	XMidiEventList.cpp
	XMidiEventList.h
	XMidiFile.cpp
	XMidiFile.h
	XMidiNoteStack.h
	XMidiSequence.cpp
	XMidiSequence.h
	XMidiSequenceHandler.h
	FluidSynthMidiDriver.cpp
	FluidSynthMidiDriver.h
)

add_library(libmidi_drivers OBJECT 
	${libmidi_drivers_SOURCES}
	$<TARGET_OBJECTS:libtimidity>
	$<TARGET_OBJECTS:libmt32emu>
)
