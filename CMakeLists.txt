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

# Building hangman-udp

# Set project libs for linker
# Don't mistake osx for unix
if(UNIX AND NOT APPLE)
  set(PROJECT_LINK_LIBS libhangman.so)
else()
  set(PROJECT_LINK_LIBS libhangman.dylib)
endif()

#set(CMAKE_INSTALL_RPATH ../external/libhangman/lib)
#set(CMAKE_INSTALL_RPATH_USE_LINK_PATH false)

# Set sources for target
set(SOURCES src/udp_server.c)

# Build the executable into the bin folder
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Create the binary file
add_executable(serverUDP ${SOURCES})

add_custom_command(OUTPUT install_lib
                   COMMAND cp external/libhangman/lib/${PROJECT_LINK_LIBS} ./)

add_custom_target(install_lib_done DEPENDS install_lib)

# Add dependencies for lib
add_dependencies(serverUDP libhangman)
add_dependencies(serverUDP install_lib_done)

# Link libhangman
target_link_libraries(serverUDP ${CMAKE_BINARY_DIR}/external/libhangman/lib/${PROJECT_LINK_LIBS})
install(TARGETS serverUDP DESTINATION ${CMAKE_BINARY_DIR}/bin )
