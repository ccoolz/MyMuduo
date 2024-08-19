cmake_minimum_required(VERSION 2.5)     # cmake version required
project(MyMuduo)                        # project name

# MyMuduo 最终编译成 so 动态库，设置其编译为动态库的路径
#   PROJECT_SOURCE_DIR 即最顶层 CMakeLists.txt 文件所在路径
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

# 设置调试信息，以及启动 C++11 语言标准
#   ${CMAKE_CXX_FLAGS} 是默认调试信息，在此基础上再加上 -g
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -std=c++11")

# 自动收集指定目录下的源文件，比如本语句就是在当前目录(.)下收集源文件，然后将它们存储到 SRC_LIST 变量中
# 后续可以用这个 SRC_LIST 变量进行所需操作，如用于编译为可执行文件或库文件
#   aux 是 auxiliary 的缩写，意为 "辅助的，备用的"，这里有辅助获取源文件的意思
aux_source_directory(. SRC_LIST)

# 编译生成动态库 my_muduo
#   编译为可执行文件则是 add_executable
#   编译为静态库为 STATIC，动态库则为 SHARED
#   最终会生成 libmy_muduo.so   (so: Shared Object)
add_library(my_muduo SHARED ${SRC_LIST})
