cmake_minimum_required(VERSION 3.12)

project(project_template)

include(cmake/StandardProjectSettings.cmake)
include(cmake/PreventInSourceBuilds.cmake)

option(WARNINGS_AS_ERRORS "Treat compiler warnings as errors" OFF)
option(ENABLE_TESTING "Enable Test Builds" OFF)

include(cmake/StaticAnalyzers.cmake)

add_subdirectory(src)

add_subdirectory(app)

if(ENABLE_TESTING)
  enable_testing()
  add_subdirectory(tests)
endif()
