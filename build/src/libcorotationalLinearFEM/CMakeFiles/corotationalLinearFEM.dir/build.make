# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cyapp/vegafem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cyapp/vegafem/build

# Include any dependencies generated for this target.
include src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/depend.make

# Include the progress variables for this target.
include src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/progress.make

# Include the compile flags for this target's objects.
include src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/flags.make

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/flags.make
src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o: ../src/libcorotationalLinearFEM/corotationalLinearFEM.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cyapp/vegafem/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o -c /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEM.cpp

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.i"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEM.cpp > CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.i

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.s"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEM.cpp -o CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.s

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.requires:
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.requires

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.provides: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.requires
	$(MAKE) -f src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/build.make src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.provides.build
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.provides

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.provides.build: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/flags.make
src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o: ../src/libcorotationalLinearFEM/corotationalLinearFEMMT.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cyapp/vegafem/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o -c /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEMMT.cpp

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.i"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEMMT.cpp > CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.i

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.s"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cyapp/vegafem/src/libcorotationalLinearFEM/corotationalLinearFEMMT.cpp -o CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.s

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.requires:
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.requires

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.provides: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.requires
	$(MAKE) -f src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/build.make src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.provides.build
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.provides

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.provides.build: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o

# Object files for target corotationalLinearFEM
corotationalLinearFEM_OBJECTS = \
"CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o" \
"CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o"

# External object files for target corotationalLinearFEM
corotationalLinearFEM_EXTERNAL_OBJECTS =

lib/libcorotationalLinearFEM.so: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o
lib/libcorotationalLinearFEM.so: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o
lib/libcorotationalLinearFEM.so: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/build.make
lib/libcorotationalLinearFEM.so: lib/libpolarDecomposition.so
lib/libcorotationalLinearFEM.so: lib/libvolumetricMesh.so
lib/libcorotationalLinearFEM.so: lib/libsparseMatrix.so
lib/libcorotationalLinearFEM.so: lib/libgraph.so
lib/libcorotationalLinearFEM.so: lib/libsparseMatrix.so
lib/libcorotationalLinearFEM.so: lib/libobjMesh.so
lib/libcorotationalLinearFEM.so: lib/libmatrix.so
lib/libcorotationalLinearFEM.so: /usr/lib/x86_64-linux-gnu/libGL.so
lib/libcorotationalLinearFEM.so: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/libcorotationalLinearFEM.so: lib/libminivector.so
lib/libcorotationalLinearFEM.so: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libcorotationalLinearFEM.so"
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/corotationalLinearFEM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/build: lib/libcorotationalLinearFEM.so
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/build

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/requires: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEM.cpp.o.requires
src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/requires: src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/corotationalLinearFEMMT.cpp.o.requires
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/requires

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/clean:
	cd /home/cyapp/vegafem/build/src/libcorotationalLinearFEM && $(CMAKE_COMMAND) -P CMakeFiles/corotationalLinearFEM.dir/cmake_clean.cmake
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/clean

src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/depend:
	cd /home/cyapp/vegafem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cyapp/vegafem /home/cyapp/vegafem/src/libcorotationalLinearFEM /home/cyapp/vegafem/build /home/cyapp/vegafem/build/src/libcorotationalLinearFEM /home/cyapp/vegafem/build/src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libcorotationalLinearFEM/CMakeFiles/corotationalLinearFEM.dir/depend

