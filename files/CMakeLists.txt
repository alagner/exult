cmake_minimum_required(VERSION 3.5)

set(rwregress_SOURCES
	rwregress.cc
	utils.h
)

add_compile_definitions(HAVE_STDFILESYSTEM=1)
include_directories(../)
include_directories(../headers)
add_subdirectory(sha1)
add_subdirectory(zip)

set(libu7file_SOURCES
	Flat.cc
	Flat.h
	Flex.cc
	Flex.h
	Table.cc
	Table.h	
	IFF.cc
	IFF.h
	U7file.cc
	U7file.h
	U7fileman.cc
	U7fileman.h
	U7obj.cc
	U7obj.h	
	filesystem.h
	utils.cc	
	utils.h	
	databuf.h
	listfiles.cc
	listfiles.h	
	crc.cc
	crc.h
	msgfile.cc
	msgfile.h
)

add_library(libu7file OBJECT
	${libu7file_SOURCES}
	$<TARGET_OBJECTS:libsha1>
	$<TARGET_OBJECTS:libminizip>
)

add_executable(rwregress ${rwregress_SOURCES})
