cmake_minimum_required(VERSION 3.5)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

include_directories(.)
include_directories(..)
include_directories(../objs)
include_directories(../conf)
include_directories(../gump)
include_directories(../files)
include_directories(../headers)
include_directories(../shapes)
include_directories(../gumps)
include_directories(../imagewin)
include_directories(midi_drivers)
add_subdirectory(midi_drivers)


set(audio_SOURCES
	Audio.cc
	Audio.h
	Midi.cc
	Midi.h
	conv.cc
	conv.h
	soundtest.cc
	soundtest.h
	convmusic.h
	AudioChannel.cc
	AudioChannel.h
	AudioMixer.cc
	AudioMixer.h
	AudioSample.cc
	AudioSample.h
	OggAudioSample.cc
	OggAudioSample.h
	RawAudioSample.cc
	RawAudioSample.h
	VocAudioSample.cc
	VocAudioSample.h
	WavAudioSample.cc
	WavAudioSample.h
)

add_library(audio OBJECT 
	${audio_SOURCES}
	$<TARGET_OBJECTS:midi_drivers>
)
