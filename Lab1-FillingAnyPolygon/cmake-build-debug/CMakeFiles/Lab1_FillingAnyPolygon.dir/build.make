# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Lab1_FillingAnyPolygon.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab1_FillingAnyPolygon.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab1_FillingAnyPolygon.dir/flags.make

CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o: CMakeFiles/Lab1_FillingAnyPolygon.dir/flags.make
CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o -c /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/main.cpp

CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/main.cpp > CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.i

CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/main.cpp -o CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.s

CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o: CMakeFiles/Lab1_FillingAnyPolygon.dir/flags.make
CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o: ../Render.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o -c /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/Render.cpp

CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/Render.cpp > CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.i

CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/Render.cpp -o CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.s

# Object files for target Lab1_FillingAnyPolygon
Lab1_FillingAnyPolygon_OBJECTS = \
"CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o" \
"CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o"

# External object files for target Lab1_FillingAnyPolygon
Lab1_FillingAnyPolygon_EXTERNAL_OBJECTS =

Lab1_FillingAnyPolygon: CMakeFiles/Lab1_FillingAnyPolygon.dir/main.cpp.o
Lab1_FillingAnyPolygon: CMakeFiles/Lab1_FillingAnyPolygon.dir/Render.cpp.o
Lab1_FillingAnyPolygon: CMakeFiles/Lab1_FillingAnyPolygon.dir/build.make
Lab1_FillingAnyPolygon: CMakeFiles/Lab1_FillingAnyPolygon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Lab1_FillingAnyPolygon"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab1_FillingAnyPolygon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab1_FillingAnyPolygon.dir/build: Lab1_FillingAnyPolygon

.PHONY : CMakeFiles/Lab1_FillingAnyPolygon.dir/build

CMakeFiles/Lab1_FillingAnyPolygon.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab1_FillingAnyPolygon.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab1_FillingAnyPolygon.dir/clean

CMakeFiles/Lab1_FillingAnyPolygon.dir/depend:
	cd /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug /Users/amado-developer/College/Graphics/GraphicsCourse-SimpleRenderer-C/Lab1-FillingAnyPolygon/cmake-build-debug/CMakeFiles/Lab1_FillingAnyPolygon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lab1_FillingAnyPolygon.dir/depend

