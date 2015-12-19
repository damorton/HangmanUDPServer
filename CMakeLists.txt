cmake_minimum_required(VERSION 2.8)
project(serverUDP)
include(ExternalProject)

ExternalProject_Add(libhangman
   PREFIX ${CMAKE_BINARY_DIR}/build/libhangman
   GIT_REPOSITORY https://github.com/damorton/libhangman.git
   INSTALL_COMMAND ""
   BINARY_DIR ${CMAKE_BINARY_DIR}/external/libhangman
   SOURCE_DIR ${CMAKE_BINARY_DIR}/external/libhangman
)

include_directories(${CMAKE_BINARY_DIR}/include/libhangman)

if(UNIX AND NOT APPLE)
  set(PROJECT_LINK_LIBS libhangman.so)
else()
  set(PROJECT_LINK_LIBS libhangman.dylib)
endif()

set(SOURCES src/udp_server.c)

link_directories(external/libhangman/)
link_directories(external/libhangman/external/libsocket/)

add_executable(serverUDP ${SOURCES})

add_dependencies(serverUDP libhangman)

target_link_libraries(serverUDP ${PROJECT_LINK_LIBS})