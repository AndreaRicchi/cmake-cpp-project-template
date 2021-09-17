# Notes:
# - missingIncludeSystem needed since not all source files are
#   analyzed simultaneously
# - unmatchedSuppression needed since not all source files are
#   analyzed simultaneously
# - unusedFunction needed since not all source files are
#   analyzed simultaneously
# - template needed to force "warning" into output string, and
#   to make the 'id' available for suppression

find_program(CMAKE_CXX_CPPCHECK NAMES cppcheck)
if (NOT CMAKE_CXX_CPPCHECK)
    message(FATAL_ERROR "CMake_RUN_CLANG_TIDY is ON but clang-tidy is not found!")
endif ()

list(
    APPEND CMAKE_CXX_CPPCHECK
        "--enable=all"
        "--inconclusive"
        "--inline-suppr"
        "--quiet"
        "--suppress=missingIncludeSystem"
        "--suppress=unmatchedSuppression"
        "--suppress=unusedFunction"
        "--template='{file}:{line}: warning: {id} ({severity}): {message}'"
)