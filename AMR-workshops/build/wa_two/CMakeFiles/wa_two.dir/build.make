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
include wa_two/CMakeFiles/wa_two.dir/depend.make

# Include the progress variables for this target.
include wa_two/CMakeFiles/wa_two.dir/progress.make

# Include the compile flags for this target's objects.
include wa_two/CMakeFiles/wa_two.dir/flags.make

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o: wa_two/CMakeFiles/wa_two.dir/flags.make
wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o: /home/sdhoro/amr/AMR-workshops/src/wa_two/src/wa_two/wa_two.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o"
	cd /home/sdhoro/amr/AMR-workshops/build/wa_two && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o -c /home/sdhoro/amr/AMR-workshops/src/wa_two/src/wa_two/wa_two.cpp

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.i"
	cd /home/sdhoro/amr/AMR-workshops/build/wa_two && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdhoro/amr/AMR-workshops/src/wa_two/src/wa_two/wa_two.cpp > CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.i

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.s"
	cd /home/sdhoro/amr/AMR-workshops/build/wa_two && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdhoro/amr/AMR-workshops/src/wa_two/src/wa_two/wa_two.cpp -o CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.s

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.requires:

.PHONY : wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.requires

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.provides: wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.requires
	$(MAKE) -f wa_two/CMakeFiles/wa_two.dir/build.make wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.provides.build
.PHONY : wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.provides

wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.provides.build: wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o


# Object files for target wa_two
wa_two_OBJECTS = \
"CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o"

# External object files for target wa_two
wa_two_EXTERNAL_OBJECTS =

/home/sdhoro/amr/AMR-workshops/devel/lib/libwa_two.so: wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o
/home/sdhoro/amr/AMR-workshops/devel/lib/libwa_two.so: wa_two/CMakeFiles/wa_two.dir/build.make
/home/sdhoro/amr/AMR-workshops/devel/lib/libwa_two.so: wa_two/CMakeFiles/wa_two.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdhoro/amr/AMR-workshops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/sdhoro/amr/AMR-workshops/devel/lib/libwa_two.so"
	cd /home/sdhoro/amr/AMR-workshops/build/wa_two && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wa_two.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
wa_two/CMakeFiles/wa_two.dir/build: /home/sdhoro/amr/AMR-workshops/devel/lib/libwa_two.so

.PHONY : wa_two/CMakeFiles/wa_two.dir/build

wa_two/CMakeFiles/wa_two.dir/requires: wa_two/CMakeFiles/wa_two.dir/src/wa_two/wa_two.cpp.o.requires

.PHONY : wa_two/CMakeFiles/wa_two.dir/requires

wa_two/CMakeFiles/wa_two.dir/clean:
	cd /home/sdhoro/amr/AMR-workshops/build/wa_two && $(CMAKE_COMMAND) -P CMakeFiles/wa_two.dir/cmake_clean.cmake
.PHONY : wa_two/CMakeFiles/wa_two.dir/clean

wa_two/CMakeFiles/wa_two.dir/depend:
	cd /home/sdhoro/amr/AMR-workshops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdhoro/amr/AMR-workshops/src /home/sdhoro/amr/AMR-workshops/src/wa_two /home/sdhoro/amr/AMR-workshops/build /home/sdhoro/amr/AMR-workshops/build/wa_two /home/sdhoro/amr/AMR-workshops/build/wa_two/CMakeFiles/wa_two.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wa_two/CMakeFiles/wa_two.dir/depend

