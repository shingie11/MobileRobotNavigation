# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sdhoro/amr/AMR-workshops/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sdhoro/amr/AMR-workshops/build

# Include any dependencies generated for this target.
include simulator/CMakeFiles/simulator.dir/depend.make

# Include the progress variables for this target.
include simulator/CMakeFiles/simulator.dir/progress.make

# Include the compile flags for this target's objects.
include simulator/CMakeFiles/simulator.dir/flags.make

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o: simulator/CMakeFiles/simulator.dir/flags.make
simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o: /home/sdhoro/amr/AMR-workshops/src/simulator/src/simulator/simulator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o"
	cd /home/sdhoro/amr/AMR-workshops/build/simulator && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o -c /home/sdhoro/amr/AMR-workshops/src/simulator/src/simulator/simulator.cpp

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/src/simulator/simulator.cpp.i"
	cd /home/sdhoro/amr/AMR-workshops/build/simulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdhoro/amr/AMR-workshops/src/simulator/src/simulator/simulator.cpp > CMakeFiles/simulator.dir/src/simulator/simulator.cpp.i

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/src/simulator/simulator.cpp.s"
	cd /home/sdhoro/amr/AMR-workshops/build/simulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdhoro/amr/AMR-workshops/src/simulator/src/simulator/simulator.cpp -o CMakeFiles/simulator.dir/src/simulator/simulator.cpp.s

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.requires:

.PHONY : simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.requires

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.provides: simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.requires
	$(MAKE) -f simulator/CMakeFiles/simulator.dir/build.make simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.provides.build
.PHONY : simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.provides

simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.provides.build: simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o


# Object files for target simulator
simulator_OBJECTS = \
"CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o"

# External object files for target simulator
simulator_EXTERNAL_OBJECTS =

/home/sdhoro/amr/AMR-workshops/devel/lib/libsimulator.so: simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o
/home/sdhoro/amr/AMR-workshops/devel/lib/libsimulator.so: simulator/CMakeFiles/simulator.dir/build.make
/home/sdhoro/amr/AMR-workshops/devel/lib/libsimulator.so: simulator/CMakeFiles/simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/sdhoro/amr/AMR-workshops/devel/lib/libsimulator.so"
	cd /home/sdhoro/amr/AMR-workshops/build/simulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
simulator/CMakeFiles/simulator.dir/build: /home/sdhoro/amr/AMR-workshops/devel/lib/libsimulator.so

.PHONY : simulator/CMakeFiles/simulator.dir/build

simulator/CMakeFiles/simulator.dir/requires: simulator/CMakeFiles/simulator.dir/src/simulator/simulator.cpp.o.requires

.PHONY : simulator/CMakeFiles/simulator.dir/requires

simulator/CMakeFiles/simulator.dir/clean:
	cd /home/sdhoro/amr/AMR-workshops/build/simulator && $(CMAKE_COMMAND) -P CMakeFiles/simulator.dir/cmake_clean.cmake
.PHONY : simulator/CMakeFiles/simulator.dir/clean

simulator/CMakeFiles/simulator.dir/depend:
	cd /home/sdhoro/amr/AMR-workshops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdhoro/amr/AMR-workshops/src /home/sdhoro/amr/AMR-workshops/src/simulator /home/sdhoro/amr/AMR-workshops/build /home/sdhoro/amr/AMR-workshops/build/simulator /home/sdhoro/amr/AMR-workshops/build/simulator/CMakeFiles/simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : simulator/CMakeFiles/simulator.dir/depend

