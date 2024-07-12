cmake_minimum_required(VERSION 3.10)

# 项目信息
project(VideoPlayer)

# 查找OpenCV库
find_package(OpenCV REQUIRED)

# 添加可执行文件
add_executable(VideoPlayer vedio.cpp)

# 链接OpenCV库
target_link_libraries(VideoPlayer ${OpenCV_LIBS})
