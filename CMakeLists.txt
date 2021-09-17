cmake_minimum_required(VERSION 3.12)

project(project_template)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# Let's ensure -std=c++xx instead of -std=g++xx
set(CMAKE_CXX_EXTENSIONS OFF)

option(BUILD_TEST "Enable building test applications" OFF)

add_subdirectory(src)

add_subdirectory(app)

if(BUILD_TEST)
    enable_testing()
    add_subdirectory(tests)
endif()