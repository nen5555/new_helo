add_executable(binary_search binary_search.cpp)
add_executable(binary_search_insertion binary_search_insertion.cpp)
add_executable(binary_search_edge binary_search_edge.cpp)
add_executable(two_sum two_sum.cpp)
add_executable(search_all search_all.cpp)

set(OpenCV_DIR "/home/stone/package/opencv-4.5.5/build")

# 查找OpenCV库
find_package(OpenCV REQUIRED core imgproc highgui)


# 包含OpenCV头文件
target_include_directories(search_all PRIVATE ${OpenCV_INCLUDE_DIRS})

# 链接OpenCV库
target_link_libraries(search_all PRIVATE ${OpenCV_LIBS})