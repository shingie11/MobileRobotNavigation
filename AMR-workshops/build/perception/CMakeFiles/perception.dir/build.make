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
include perception/CMakeFiles/perception.dir/depend.make

# Include the progress variables for this target.
include perception/CMakeFiles/perception.dir/progress.make

# Include the compile flags for this target's objects.
include perception/CMakeFiles/perception.dir/flags.make

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o: perception/CMakeFiles/perception.dir/flags.make
perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o: /home/sdhoro/amr/AMR-workshops/src/perception/src/perception/perception.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o"
	cd /home/sdhoro/amr/AMR-workshops/build/perception && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/perception.dir/src/perception/perception.cpp.o -c /home/sdhoro/amr/AMR-workshops/src/perception/src/perception/perception.cpp

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perception.dir/src/perception/perception.cpp.i"
	cd /home/sdhoro/amr/AMR-workshops/build/perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdhoro/amr/AMR-workshops/src/perception/src/perception/perception.cpp > CMakeFiles/perception.dir/src/perception/perception.cpp.i

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perception.dir/src/perception/perception.cpp.s"
	cd /home/sdhoro/amr/AMR-workshops/build/perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdhoro/amr/AMR-workshops/src/perception/src/perception/perception.cpp -o CMakeFiles/perception.dir/src/perception/perception.cpp.s

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.requires:

.PHONY : perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.requires

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.provides: perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.requires
	$(MAKE) -f perception/CMakeFiles/perception.dir/build.make perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.provides.build
.PHONY : perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.provides

perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.provides.build: perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o


# Object files for target perception
perception_OBJECTS = \
"CMakeFiles/perception.dir/src/perception/perception.cpp.o"

# External object files for target perception
perception_EXTERNAL_OBJECTS =

/home/sdhoro/amr/AMR-workshops/devel/lib/libperception.so: perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o
/home/sdhoro/amr/AMR-workshops/devel/lib/libperception.so: perception/CMakeFiles/perception.dir/build.make
/home/sdhoro/amr/AMR-workshops/devel/lib/libperception.so: perception/CMakeFiles/perception.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/sdhoro/amr/AMR-workshops/devel/lib/libperception.so"
	cd /home/sdhoro/amr/AMR-workshops/build/perception && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perception.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
perception/CMakeFiles/perception.dir/build: /home/sdhoro/amr/AMR-workshops/devel/lib/libperception.so

.PHONY : perception/CMakeFiles/perception.dir/build

perception/CMakeFiles/perception.dir/requires: perception/CMakeFiles/perception.dir/src/perception/perception.cpp.o.requires

.PHONY : perception/CMakeFiles/perception.dir/requires

perception/CMakeFiles/perception.dir/clean:
	cd /home/sdhoro/amr/AMR-workshops/build/perception && $(CMAKE_COMMAND) -P CMakeFiles/perception.dir/cmake_clean.cmake
.PHONY : perception/CMakeFiles/perception.dir/clean

perception/CMakeFiles/perception.dir/depend:
	cd /home/sdhoro/amr/AMR-workshops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdhoro/amr/AMR-workshops/src /home/sdhoro/amr/AMR-workshops/src/perception /home/sdhoro/amr/AMR-workshops/build /home/sdhoro/amr/AMR-workshops/build/perception /home/sdhoro/amr/AMR-workshops/build/perception/CMakeFiles/perception.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : perception/CMakeFiles/perception.dir/depend

