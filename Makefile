# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mortond/Documents/workspace/hangman-udp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mortond/Documents/workspace/hangman-udp

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/Applications/CMake.app/Contents/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CMake.app/Contents/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/mortond/Documents/workspace/hangman-udp/CMakeFiles /Users/mortond/Documents/workspace/hangman-udp/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/mortond/Documents/workspace/hangman-udp/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named libhangman

# Build rule for target.
libhangman: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 libhangman
.PHONY : libhangman

# fast build rule for target.
libhangman/fast:
	$(MAKE) -f CMakeFiles/libhangman.dir/build.make CMakeFiles/libhangman.dir/build
.PHONY : libhangman/fast

#=============================================================================
# Target rules for targets named serverUDP

# Build rule for target.
serverUDP: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 serverUDP
.PHONY : serverUDP

# fast build rule for target.
serverUDP/fast:
	$(MAKE) -f CMakeFiles/serverUDP.dir/build.make CMakeFiles/serverUDP.dir/build
.PHONY : serverUDP/fast

src/udp_server.o: src/udp_server.c.o

.PHONY : src/udp_server.o

# target to build an object file
src/udp_server.c.o:
	$(MAKE) -f CMakeFiles/serverUDP.dir/build.make CMakeFiles/serverUDP.dir/src/udp_server.c.o
.PHONY : src/udp_server.c.o

src/udp_server.i: src/udp_server.c.i

.PHONY : src/udp_server.i

# target to preprocess a source file
src/udp_server.c.i:
	$(MAKE) -f CMakeFiles/serverUDP.dir/build.make CMakeFiles/serverUDP.dir/src/udp_server.c.i
.PHONY : src/udp_server.c.i

src/udp_server.s: src/udp_server.c.s

.PHONY : src/udp_server.s

# target to generate assembly for a file
src/udp_server.c.s:
	$(MAKE) -f CMakeFiles/serverUDP.dir/build.make CMakeFiles/serverUDP.dir/src/udp_server.c.s
.PHONY : src/udp_server.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... libhangman"
	@echo "... serverUDP"
	@echo "... src/udp_server.o"
	@echo "... src/udp_server.i"
	@echo "... src/udp_server.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

