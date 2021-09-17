cmake_minimum_required(VERSION 3.12)

project(project_template)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# Let's ensure -std=c++xx instead of -std=g++xx
set(CMAKE_CXX_EXTENSIONS OFF)
# Enable clang tidy to use correct includes
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(BUILD_TEST "Enable building test applications" OFF)
option(RUN_CLANG_TIDY "Enable code analysis with clang-tidy" OFF)

if (RUN_CLANG_TIDY)
    include(cmake/clang-tidy.cmake)
endif()

add_subdirectory(src)

add_subdirectory(app)

if(BUILD_TEST)
    enable_testing()
    add_subdirectory(tests)
endif()