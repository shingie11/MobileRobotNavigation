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

# Utility rule file for workshop_assessment_one_geneus.

# Include the progress variables for this target.
include workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/progress.make

workshop_assessment_one_geneus: workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/build.make

.PHONY : workshop_assessment_one_geneus

# Rule to build all files generated by this target.
workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/build: workshop_assessment_one_geneus

.PHONY : workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/build

workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/clean:
	cd /home/sdhoro/amr/AMR-workshops/build/workshop_assessment_one && $(CMAKE_COMMAND) -P CMakeFiles/workshop_assessment_one_geneus.dir/cmake_clean.cmake
.PHONY : workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/clean

workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/depend:
	cd /home/sdhoro/amr/AMR-workshops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdhoro/amr/AMR-workshops/src /home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one /home/sdhoro/amr/AMR-workshops/build /home/sdhoro/amr/AMR-workshops/build/workshop_assessment_one /home/sdhoro/amr/AMR-workshops/build/workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : workshop_assessment_one/CMakeFiles/workshop_assessment_one_geneus.dir/depend
