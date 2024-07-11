cmake_minimum_required(VERSION 3.10)
project(demo)

# 设置OpenCV的安装路径
set(OpenCV_DIR "/home/stone/package/opencv-4.5.5/build")

# 查找OpenCV库
find_package(OpenCV REQUIRED core imgproc highgui)

# 添加可执行文件
add_executable(demo demo.cpp)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 包含OpenCV头文件
target_include_directories(demo PRIVATE ${OpenCV_INCLUDE_DIRS})

# 链接OpenCV库
target_link_libraries(demo PRIVATE ${OpenCV_LIBS})


