cmake_minimum_required(VERSION 3.5)

include_directories(.)
include_directories(..)
include_directories(../headers)
include_directories(../files)
include_directories(../objs)
include_directories(../imagewin)
include_directories(../shapes)
include_directories(../usecode)
include_directories(../gumps)

set(server_SOURCES
	objserial.cc
	objserial.h
	servemsg.cc
	servemsg.h
	server.cc
	server.h
	servewin32.cc
	servewin32.h
)

add_library(server OBJECT
	${server_SOURCES}
)


