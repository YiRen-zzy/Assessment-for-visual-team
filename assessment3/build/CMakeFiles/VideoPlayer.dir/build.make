# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ziyue/assessment3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ziyue/assessment3/build

# Include any dependencies generated for this target.
include CMakeFiles/VideoPlayer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VideoPlayer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VideoPlayer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VideoPlayer.dir/flags.make

CMakeFiles/VideoPlayer.dir/vedio.cpp.o: CMakeFiles/VideoPlayer.dir/flags.make
CMakeFiles/VideoPlayer.dir/vedio.cpp.o: ../vedio.cpp
CMakeFiles/VideoPlayer.dir/vedio.cpp.o: CMakeFiles/VideoPlayer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziyue/assessment3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VideoPlayer.dir/vedio.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VideoPlayer.dir/vedio.cpp.o -MF CMakeFiles/VideoPlayer.dir/vedio.cpp.o.d -o CMakeFiles/VideoPlayer.dir/vedio.cpp.o -c /home/ziyue/assessment3/vedio.cpp

CMakeFiles/VideoPlayer.dir/vedio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoPlayer.dir/vedio.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziyue/assessment3/vedio.cpp > CMakeFiles/VideoPlayer.dir/vedio.cpp.i

CMakeFiles/VideoPlayer.dir/vedio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoPlayer.dir/vedio.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziyue/assessment3/vedio.cpp -o CMakeFiles/VideoPlayer.dir/vedio.cpp.s

# Object files for target VideoPlayer
VideoPlayer_OBJECTS = \
"CMakeFiles/VideoPlayer.dir/vedio.cpp.o"

# External object files for target VideoPlayer
VideoPlayer_EXTERNAL_OBJECTS =

VideoPlayer: CMakeFiles/VideoPlayer.dir/vedio.cpp.o
VideoPlayer: CMakeFiles/VideoPlayer.dir/build.make
VideoPlayer: /usr/local/opencv4/lib/libopencv_gapi.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_highgui.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_ml.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_objdetect.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_photo.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_stitching.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_video.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_videoio.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_imgcodecs.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_dnn.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_calib3d.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_features2d.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_flann.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_imgproc.so.4.6.0
VideoPlayer: /usr/local/opencv4/lib/libopencv_core.so.4.6.0
VideoPlayer: CMakeFiles/VideoPlayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ziyue/assessment3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VideoPlayer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VideoPlayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VideoPlayer.dir/build: VideoPlayer
.PHONY : CMakeFiles/VideoPlayer.dir/build

CMakeFiles/VideoPlayer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VideoPlayer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VideoPlayer.dir/clean

CMakeFiles/VideoPlayer.dir/depend:
	cd /home/ziyue/assessment3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ziyue/assessment3 /home/ziyue/assessment3 /home/ziyue/assessment3/build /home/ziyue/assessment3/build /home/ziyue/assessment3/build/CMakeFiles/VideoPlayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VideoPlayer.dir/depend

