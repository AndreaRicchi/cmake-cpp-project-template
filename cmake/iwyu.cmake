find_program(IWYU_PATH NAMES include-what-you-use iwyu)
if(NOT IWYU_PATH)
    message(FATAL_ERROR "Could not find the program include-what-you-use")
endif()

set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE ${IWYU_PATH})
set(CMAKE_C_INCLUDE_WHAT_YOU_USE ${IWYU_PATH})