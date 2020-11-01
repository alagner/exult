cmake_minimum_required(VERSION 3.5)

project(Exult LANGUAGES CXX)
add_compile_definitions(VERSION="1.7.0git")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)

#TODO use Conan to pull-in SDL
find_package(SDL2 REQUIRED)
find_library(OGG ogg)
find_library(VORBIS vorbis)
find_library(VORBISFILE vorbisfile)
find_library(ZLIB z)
include_directories(${SDL2_INCLUDE_DIRS})

include_directories(.)
include_directories(objs)
include_directories(audio)
include_directories(audio/midi_drivers)
include_directories(imagewin)
include_directories(conf)
include_directories(headers)
include_directories(shapes)
include_directories(shapes/shapeinf)
include_directories(files)
include_directories(gumps)
include_directories(data)
include_directories(gamemgr)
include_directories(pathfinder)
include_directories(usecode)

include_directories(/usr/local/include)


add_compile_definitions(EXULT_DATADIR="/Library/Application\ Support/Exult/data")


add_subdirectory(files)
add_subdirectory(Audio)
add_subdirectory(conf)
add_subdirectory(flic)
add_subdirectory(gamemgr)
add_subdirectory(gumps)
add_subdirectory(imagewin)
#add_subdirectory(mapedit)
add_subdirectory(shapes)
add_subdirectory(server)
add_subdirectory(usecode)
add_subdirectory(pathfinder)
add_subdirectory(objs)

set(exult_SOURCES
	actions.cc
	actions.h
	actorio.cc
	actors.cc
	actors.h
	args.cc
	args.h
	browser.cc
	browser.h
	cheat.cc
	cheat.h
	cheat_screen.cc
	cheat_screen.h
	combat.cc
	combat.h
	combat_opts.h
	headers/common_types.h
	dir.cc
	dir.h
	drag.cc
	drag.h
	effects.cc
	effects.h
	exult.cc
	exult.h
	exulticon.h
	exultmenu.cc
	exultmenu.h
	exult_constants.h
	fnames.h
	frameseq.h
	game.cc
	game.h
	gameclk.cc
	gameclk.h
	gamedat.cc
	gamemap.cc
	gamemap.h
	gamerend.cc
	gamerend.h
	gamewin.cc
	gamewin.h
	hash_utils.h
	headers/ignore_unused_variable_warning.h
	istring.cc
	istring.h
	keys.cc
	keys.h
	keyactions.cc
	keyactions.h
	menulist.cc
	menulist.h
	monsters.cc
	monsters.h
	mouse.cc
	mouse.h
	npcnear.cc
	npcnear.h
	npctime.cc
	npctime.h
	palette.cc
	palette.h
	party.cc
	party.h
	paths.cc
	paths.h
	readnpcs.cc
	shapes/ready.h
	rect.h
	schedule.cc
	schedule.h
	shapeid.cc
	shapeid.h
	singles.h
	touchui.cc
	touchui.h
	tiles.h
	tqueue.cc
	tqueue.h
	txtscroll.cc
	txtscroll.h
	version.cc
	version.h
	xdrag.cc
	xdrag.h
)

add_library(exult_main OBJECT
	${exult_SOURCES}
)

add_executable(exult
	$<TARGET_OBJECTS:libaudio>
	$<TARGET_OBJECTS:libmidi_drivers>
	$<TARGET_OBJECTS:libserver>
	$<TARGET_OBJECTS:libflic>
	$<TARGET_OBJECTS:libgamemgr>
	$<TARGET_OBJECTS:libconf>
	$<TARGET_OBJECTS:libshapes>
	$<TARGET_OBJECTS:libshapeinf>
	$<TARGET_OBJECTS:libusecode>
	$<TARGET_OBJECTS:libu7file>
	$<TARGET_OBJECTS:libgumps>
	$<TARGET_OBJECTS:libimagewin>
	$<TARGET_OBJECTS:libpathfinder>
	$<TARGET_OBJECTS:libobjs>
	$<TARGET_OBJECTS:exult_main>
)

target_link_libraries(exult ${SDL2_LIBRARIES} ${OGG} ${VORBIS} ${VORBISFILE} ${ZLIB} "-framework CoreFoundation" "-framework AudioUnit" "-framework AudioToolBox" "-framework CoreMidi")
