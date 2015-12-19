cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0015 NEW)

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

# Building hangman-udp

# Set project libs for linker
# Don't mistake osx for unix
if(UNIX AND NOT APPLE)
  set(PROJECT_LINK_LIBS libhangman.so)
  #set(CMAKE_INSTALL_RPATH \$ORIGIN/../external/libhangman/lib)
else()
  set(PROJECT_LINK_LIBS libhangman.dylib)
  #set(CMAKE_INSTALL_NAME_DIR @executable_path/../external/libsocket/lib)
  #set(CMAKE_MACOSX_RPATH ON)
  #set(CMAKE_SKIP_BUILD_RPATH FALSE)
  #set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
  #set(CMAKE_INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/external/libhanman/lib)
  #set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
  #list(FIND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES ${CMAKE_INSTALL_PREFIX}/external/libhanman/lib isSystemDir)
  #if(${isSystemDir} STREQUAL "-1")
   # set(CMAKE_INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/external/libhanman/lib)
  #endif()
endif()

#set(CMAKE_INSTALL_RPATH_USE_LINK_PATH true)

# Set sources for target
set(SOURCES src/udp_server.c)

# Build the executable into the bin folder
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Create the binary file
add_executable(serverUDP ${SOURCES})

#link_directories(../external/libhangman/lib/)

# Add dependencies for lib
add_dependencies(serverUDP libhangman)

# Link libhangman
#target_link_libraries(serverUDP ${CMAKE_CURRENT_BINARY_DIR}/external/libhangman/lib/${PROJECT_LINK_LIBS})
target_link_libraries(serverUDP ${CMAKE_CURRENT_BINARY_DIR}/external/libhangman/lib/${PROJECT_LINK_LIBS})
#install(TARGETS serverUDP DESTINATION ../bin )
