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
include src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/depend.make

# Include the progress variables for this target.
include src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/progress.make

# Include the compile flags for this target's objects.
include src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/flags.make

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/flags.make
src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o: ../src/util/interactiveDeformableSimulator/interactiveDeformableSimulator.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cyapp/vegafem/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o -c /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/interactiveDeformableSimulator.cpp

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.i"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/interactiveDeformableSimulator.cpp > CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.i

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.s"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/interactiveDeformableSimulator.cpp -o CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.s

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.requires:
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.requires

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.provides: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.requires
	$(MAKE) -f src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/build.make src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.provides.build
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.provides

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.provides.build: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/flags.make
src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o: ../src/util/interactiveDeformableSimulator/initGraphics.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cyapp/vegafem/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/deformsim.dir/initGraphics.cpp.o -c /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/initGraphics.cpp

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deformsim.dir/initGraphics.cpp.i"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/initGraphics.cpp > CMakeFiles/deformsim.dir/initGraphics.cpp.i

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deformsim.dir/initGraphics.cpp.s"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cyapp/vegafem/src/util/interactiveDeformableSimulator/initGraphics.cpp -o CMakeFiles/deformsim.dir/initGraphics.cpp.s

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.requires:
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.requires

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.provides: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.requires
	$(MAKE) -f src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/build.make src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.provides.build
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.provides

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.provides.build: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o

# Object files for target deformsim
deformsim_OBJECTS = \
"CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o" \
"CMakeFiles/deformsim.dir/initGraphics.cpp.o"

# External object files for target deformsim
deformsim_EXTERNAL_OBJECTS =

bin/deformsim: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o
bin/deformsim: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o
bin/deformsim: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/build.make
bin/deformsim: lib/libsceneObject.so
bin/deformsim: lib/libintegrator.so
bin/deformsim: lib/libelasticForceModel.so
bin/deformsim: lib/libforceModel.so
bin/deformsim: lib/libmatrix.so
bin/deformsim: lib/libsparseMatrix.so
bin/deformsim: lib/libloadList.so
bin/deformsim: lib/libinsertRows.so
bin/deformsim: lib/liblighting.so
bin/deformsim: lib/libconfigFile.so
bin/deformsim: lib/libvolumetricMesh.so
bin/deformsim: lib/libgetopts.so
bin/deformsim: lib/libcamera.so
bin/deformsim: lib/libgraph.so
bin/deformsim: lib/libisotropicHyperelasticFEM.so
bin/deformsim: lib/libminivector.so
bin/deformsim: lib/libstvk.so
bin/deformsim: lib/libcorotationalLinearFEM.so
bin/deformsim: lib/libpolarDecomposition.so
bin/deformsim: lib/libmassSpringSystem.so
bin/deformsim: lib/libobjMesh.so
bin/deformsim: lib/libsparseSolver.so
bin/deformsim: /usr/lib/x86_64-linux-gnu/libGL.so
bin/deformsim: /usr/lib/libglut.so
bin/deformsim: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/deformsim: /usr/lib/libglui.so
bin/deformsim: lib/libperformanceCounter.so
bin/deformsim: lib/libconfigFile.so
bin/deformsim: lib/libvolumetricMesh.so
bin/deformsim: lib/libgraph.so
bin/deformsim: lib/libsparseMatrix.so
bin/deformsim: lib/libobjMesh.so
bin/deformsim: lib/libmatrix.so
bin/deformsim: lib/libminivector.so
bin/deformsim: /usr/lib/x86_64-linux-gnu/libGL.so
bin/deformsim: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/deformsim: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/deformsim"
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/deformsim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/build: bin/deformsim
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/build

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/requires: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/interactiveDeformableSimulator.cpp.o.requires
src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/requires: src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/initGraphics.cpp.o.requires
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/requires

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/clean:
	cd /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator && $(CMAKE_COMMAND) -P CMakeFiles/deformsim.dir/cmake_clean.cmake
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/clean

src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/depend:
	cd /home/cyapp/vegafem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cyapp/vegafem /home/cyapp/vegafem/src/util/interactiveDeformableSimulator /home/cyapp/vegafem/build /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator /home/cyapp/vegafem/build/src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/util/interactiveDeformableSimulator/CMakeFiles/deformsim.dir/depend

