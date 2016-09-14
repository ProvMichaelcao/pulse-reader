# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/parallels/src/modules/pulsereader/pulse-reader

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu

# Include any dependencies generated for this target.
include src/server/CMakeFiles/kmspulsereaderimpl.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/kmspulsereaderimpl.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/kmspulsereaderimpl.dir/flags.make

src/server/cpp_server_internal.generated: ../src/server/interface/pulsereader.kmd.json
src/server/cpp_server_internal.generated: ../src/server/interface/pulsereader.PulseReader.kmd.json
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating cpp_server_internal.generated, implementation/generated-cpp/SerializerExpanderPulsereader.cpp, implementation/generated-cpp/PulseReaderImplInternal.cpp, implementation/generated-cpp/PulseReaderImplFactory.hpp"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/cmake -E touch cpp_server_internal.generated
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/kurento-module-creator -c /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp -r /home/parallels/src/modules/pulsereader/pulse-reader/src/server/interface -dr /usr/share/kurento/modules -it cpp_server_internal

src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp: src/server/cpp_server_internal.generated

src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp: src/server/cpp_server_internal.generated

src/server/implementation/generated-cpp/PulseReaderImplFactory.hpp: src/server/cpp_server_internal.generated

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o: src/server/CMakeFiles/kmspulsereaderimpl.dir/flags.make
src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o: ../src/server/implementation/objects/PulseReaderImpl.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o -c /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderImpl.cpp

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.i"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderImpl.cpp > CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.i

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.s"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderImpl.cpp -o CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.s

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.requires

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.provides: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmspulsereaderimpl.dir/build.make src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.provides

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.provides.build: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o: src/server/CMakeFiles/kmspulsereaderimpl.dir/flags.make
src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o: ../src/server/implementation/objects/PulseReaderOpenCVImpl.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o -c /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderOpenCVImpl.cpp

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.i"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderOpenCVImpl.cpp > CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.i

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.s"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/src/modules/pulsereader/pulse-reader/src/server/implementation/objects/PulseReaderOpenCVImpl.cpp -o CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.s

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.requires

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.provides: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmspulsereaderimpl.dir/build.make src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.provides

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.provides.build: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o: src/server/CMakeFiles/kmspulsereaderimpl.dir/flags.make
src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o: src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o -c /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.i"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp > CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.i

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.s"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp -o CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.s

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.requires

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.provides: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmspulsereaderimpl.dir/build.make src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.provides

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.provides.build: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o: src/server/CMakeFiles/kmspulsereaderimpl.dir/flags.make
src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o: src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o -c /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.i"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp > CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.i

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.s"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && /usr/bin/x86_64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp -o CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.s

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.requires

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.provides: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmspulsereaderimpl.dir/build.make src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.provides

src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.provides.build: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o

# Object files for target kmspulsereaderimpl
kmspulsereaderimpl_OBJECTS = \
"CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o" \
"CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o" \
"CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o" \
"CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o"

# External object files for target kmspulsereaderimpl
kmspulsereaderimpl_EXTERNAL_OBJECTS =

src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/build.make
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmselementsimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmsfiltersimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmselementsimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/libkmspulsereaderinterface.a
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmselementsimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmsfiltersimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmselementsimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: /usr/lib/x86_64-linux-gnu/libkmsfiltersimpl.so
src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4: src/server/CMakeFiles/kmspulsereaderimpl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libkmspulsereaderimpl.so"
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kmspulsereaderimpl.dir/link.txt --verbose=$(VERBOSE)
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && $(CMAKE_COMMAND) -E cmake_symlink_library "libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4" libkmspulsereaderimpl.so.0 libkmspulsereaderimpl.so

src/server/libkmspulsereaderimpl.so.0: src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4

src/server/libkmspulsereaderimpl.so: src/server/libkmspulsereaderimpl.so.0.0.1~3.g45ab6f4

# Rule to build all files generated by this target.
src/server/CMakeFiles/kmspulsereaderimpl.dir/build: src/server/libkmspulsereaderimpl.so
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/build

src/server/CMakeFiles/kmspulsereaderimpl.dir/requires: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderImpl.cpp.o.requires
src/server/CMakeFiles/kmspulsereaderimpl.dir/requires: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/objects/PulseReaderOpenCVImpl.cpp.o.requires
src/server/CMakeFiles/kmspulsereaderimpl.dir/requires: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/SerializerExpanderPulsereader.cpp.o.requires
src/server/CMakeFiles/kmspulsereaderimpl.dir/requires: src/server/CMakeFiles/kmspulsereaderimpl.dir/implementation/generated-cpp/PulseReaderImplInternal.cpp.o.requires
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/requires

src/server/CMakeFiles/kmspulsereaderimpl.dir/clean:
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server && $(CMAKE_COMMAND) -P CMakeFiles/kmspulsereaderimpl.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/clean

src/server/CMakeFiles/kmspulsereaderimpl.dir/depend: src/server/cpp_server_internal.generated
src/server/CMakeFiles/kmspulsereaderimpl.dir/depend: src/server/implementation/generated-cpp/SerializerExpanderPulsereader.cpp
src/server/CMakeFiles/kmspulsereaderimpl.dir/depend: src/server/implementation/generated-cpp/PulseReaderImplInternal.cpp
src/server/CMakeFiles/kmspulsereaderimpl.dir/depend: src/server/implementation/generated-cpp/PulseReaderImplFactory.hpp
	cd /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/src/modules/pulsereader/pulse-reader /home/parallels/src/modules/pulsereader/pulse-reader/src/server /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/CMakeFiles/kmspulsereaderimpl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/kmspulsereaderimpl.dir/depend

