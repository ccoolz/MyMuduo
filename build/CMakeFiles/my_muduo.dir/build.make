# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ccoolz/cppCode/app/MyMuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ccoolz/cppCode/app/MyMuduo/build

# Include any dependencies generated for this target.
include CMakeFiles/my_muduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_muduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_muduo.dir/flags.make

CMakeFiles/my_muduo.dir/src/base/Logger.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/base/Logger.o: ../src/base/Logger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_muduo.dir/src/base/Logger.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/base/Logger.o -c /home/ccoolz/cppCode/app/MyMuduo/src/base/Logger.cc

CMakeFiles/my_muduo.dir/src/base/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/base/Logger.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/base/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/base/Logger.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/base/Logger.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/base/Logger.o.requires

CMakeFiles/my_muduo.dir/src/base/Logger.o.provides: CMakeFiles/my_muduo.dir/src/base/Logger.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/base/Logger.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/base/Logger.o.provides

CMakeFiles/my_muduo.dir/src/base/Logger.o.provides.build: CMakeFiles/my_muduo.dir/src/base/Logger.o


CMakeFiles/my_muduo.dir/src/base/Timestamp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/base/Timestamp.o: ../src/base/Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_muduo.dir/src/base/Timestamp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/base/Timestamp.o -c /home/ccoolz/cppCode/app/MyMuduo/src/base/Timestamp.cc

CMakeFiles/my_muduo.dir/src/base/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/base/Timestamp.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/base/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/base/Timestamp.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/base/Timestamp.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/base/Timestamp.o.requires

CMakeFiles/my_muduo.dir/src/base/Timestamp.o.provides: CMakeFiles/my_muduo.dir/src/base/Timestamp.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/base/Timestamp.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/base/Timestamp.o.provides

CMakeFiles/my_muduo.dir/src/base/Timestamp.o.provides.build: CMakeFiles/my_muduo.dir/src/base/Timestamp.o


CMakeFiles/my_muduo.dir/src/net/Channel.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/net/Channel.o: ../src/net/Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/my_muduo.dir/src/net/Channel.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/net/Channel.o -c /home/ccoolz/cppCode/app/MyMuduo/src/net/Channel.cc

CMakeFiles/my_muduo.dir/src/net/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/net/Channel.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/net/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/net/Channel.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/net/Channel.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/net/Channel.o.requires

CMakeFiles/my_muduo.dir/src/net/Channel.o.provides: CMakeFiles/my_muduo.dir/src/net/Channel.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/net/Channel.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/net/Channel.o.provides

CMakeFiles/my_muduo.dir/src/net/Channel.o.provides.build: CMakeFiles/my_muduo.dir/src/net/Channel.o


CMakeFiles/my_muduo.dir/src/net/EventLoop.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/net/EventLoop.o: ../src/net/EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/my_muduo.dir/src/net/EventLoop.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/net/EventLoop.o -c /home/ccoolz/cppCode/app/MyMuduo/src/net/EventLoop.cc

CMakeFiles/my_muduo.dir/src/net/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/net/EventLoop.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/net/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/net/EventLoop.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/net/EventLoop.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/net/EventLoop.o.requires

CMakeFiles/my_muduo.dir/src/net/EventLoop.o.provides: CMakeFiles/my_muduo.dir/src/net/EventLoop.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/net/EventLoop.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/net/EventLoop.o.provides

CMakeFiles/my_muduo.dir/src/net/EventLoop.o.provides.build: CMakeFiles/my_muduo.dir/src/net/EventLoop.o


CMakeFiles/my_muduo.dir/src/net/InetAddress.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/net/InetAddress.o: ../src/net/InetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/my_muduo.dir/src/net/InetAddress.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/net/InetAddress.o -c /home/ccoolz/cppCode/app/MyMuduo/src/net/InetAddress.cc

CMakeFiles/my_muduo.dir/src/net/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/net/InetAddress.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/net/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/net/InetAddress.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/net/InetAddress.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/net/InetAddress.o.requires

CMakeFiles/my_muduo.dir/src/net/InetAddress.o.provides: CMakeFiles/my_muduo.dir/src/net/InetAddress.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/net/InetAddress.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/net/InetAddress.o.provides

CMakeFiles/my_muduo.dir/src/net/InetAddress.o.provides.build: CMakeFiles/my_muduo.dir/src/net/InetAddress.o


CMakeFiles/my_muduo.dir/src/net/TcpServer.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/src/net/TcpServer.o: ../src/net/TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/my_muduo.dir/src/net/TcpServer.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_muduo.dir/src/net/TcpServer.o -c /home/ccoolz/cppCode/app/MyMuduo/src/net/TcpServer.cc

CMakeFiles/my_muduo.dir/src/net/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/src/net/TcpServer.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/my_muduo.dir/src/net/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/src/net/TcpServer.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

CMakeFiles/my_muduo.dir/src/net/TcpServer.o.requires:

.PHONY : CMakeFiles/my_muduo.dir/src/net/TcpServer.o.requires

CMakeFiles/my_muduo.dir/src/net/TcpServer.o.provides: CMakeFiles/my_muduo.dir/src/net/TcpServer.o.requires
	$(MAKE) -f CMakeFiles/my_muduo.dir/build.make CMakeFiles/my_muduo.dir/src/net/TcpServer.o.provides.build
.PHONY : CMakeFiles/my_muduo.dir/src/net/TcpServer.o.provides

CMakeFiles/my_muduo.dir/src/net/TcpServer.o.provides.build: CMakeFiles/my_muduo.dir/src/net/TcpServer.o


# Object files for target my_muduo
my_muduo_OBJECTS = \
"CMakeFiles/my_muduo.dir/src/base/Logger.o" \
"CMakeFiles/my_muduo.dir/src/base/Timestamp.o" \
"CMakeFiles/my_muduo.dir/src/net/Channel.o" \
"CMakeFiles/my_muduo.dir/src/net/EventLoop.o" \
"CMakeFiles/my_muduo.dir/src/net/InetAddress.o" \
"CMakeFiles/my_muduo.dir/src/net/TcpServer.o"

# External object files for target my_muduo
my_muduo_EXTERNAL_OBJECTS =

../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/base/Logger.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/base/Timestamp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/net/Channel.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/net/EventLoop.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/net/InetAddress.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/src/net/TcpServer.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/build.make
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library ../lib/libmy_muduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_muduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_muduo.dir/build: ../lib/libmy_muduo.so

.PHONY : CMakeFiles/my_muduo.dir/build

CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/base/Logger.o.requires
CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/base/Timestamp.o.requires
CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/net/Channel.o.requires
CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/net/EventLoop.o.requires
CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/net/InetAddress.o.requires
CMakeFiles/my_muduo.dir/requires: CMakeFiles/my_muduo.dir/src/net/TcpServer.o.requires

.PHONY : CMakeFiles/my_muduo.dir/requires

CMakeFiles/my_muduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_muduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_muduo.dir/clean

CMakeFiles/my_muduo.dir/depend:
	cd /home/ccoolz/cppCode/app/MyMuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccoolz/cppCode/app/MyMuduo /home/ccoolz/cppCode/app/MyMuduo /home/ccoolz/cppCode/app/MyMuduo/build /home/ccoolz/cppCode/app/MyMuduo/build /home/ccoolz/cppCode/app/MyMuduo/build/CMakeFiles/my_muduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_muduo.dir/depend

