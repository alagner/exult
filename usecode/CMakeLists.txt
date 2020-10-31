cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)
include_directories(../imagewin)
include_directories(../gumps)
include_directories(../tools)
include_directories(../shapes/shapeinf)
include_directories(../shapes)
include_directories(../server)
include_directories(../objs)
include_directories(../audio)
include_directories(../audio/midi_drivers)

#add_subdirectory(compiler)
add_subdirectory(ucxt)

set(libusecode_SOURCES
	bgintrinsics.h
	siintrinsics.h
	sibetaintrinsics.h
	intrinsics.cc
	ucinternal.cc
	ucinternal.h
	ucmachine.cc
	ucmachine.h
	ucsched.h
	ucsched.cc
	ucscriptop.h
	useval.cc
	useval.h
	conversation.cc
	conversation.h
	keyring.cc
	keyring.h
	ucdisasm.cc
	ucdebugging.cc
	ucdebugging.h
	debugserver.cc
	debugserver.h
	debugmsg.h
	stackframe.cc
	stackframe.h
	ucserial.h
	ucserial.cc
	ucfunction.h
	ucfunction.cc
	ucsymtbl.cc
	ucsymtbl.h
	usefuns.h
)

add_library(libusecode OBJECT
	${libusecode_SOURCES}
)

