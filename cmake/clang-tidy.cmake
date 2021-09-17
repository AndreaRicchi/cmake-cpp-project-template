find_program(CLANG_TIDY_COMMAND NAMES clang-tidy)
if (NOT CLANG_TIDY_COMMAND)
    message(FATAL_ERROR "CMake_RUN_CLANG_TIDY is ON but clang-tidy is not found!")
endif ()

set(CMAKE_CXX_CLANG_TIDY "${CLANG_TIDY_COMMAND};--format-style=file")