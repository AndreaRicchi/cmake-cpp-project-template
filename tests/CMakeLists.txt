file(GLOB HEADER_LIST CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/tests/*.hpp")

add_executable(project_template_exe_tests main.cpp ${HEADER_LIST})
target_link_libraries(project_template_exe_tests PRIVATE gtest_main project_template_lib)

include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/703bd9caab50b139428cea1aaff9974ebee5742e.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

include(GoogleTest)
gtest_discover_tests(project_template_exe_tests)

# If you register a test, then ctest and make test will run it.
# You can also run examples and check the output, as well.
add_test(NAME project_template_exe_tests COMMAND project_template_exe_tests) # Command can be a target