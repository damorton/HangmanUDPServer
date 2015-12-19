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

# Include API .h files for libs
include_directories(${CMAKE_BINARY_DIR}/external/libhangman/include)
include_directories(${CMAKE_BINARY_DIR}/include)

if(UNIX AND NOT APPLE)
  set(PROJECT_LINK_LIBS libhangman.so)
else()
  set(PROJECT_LINK_LIBS libhangman.dylib)
endif()

set(SOURCES src/udp_server.c)

#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

link_directories(./external/libhangman/)

add_executable(serverUDP ${SOURCES})

add_dependencies(serverUDP libhangman)

target_link_libraries(serverUDP ${PROJECT_LINK_LIBS})