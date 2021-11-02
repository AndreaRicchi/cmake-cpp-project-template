# cmake-cpp-project-template
Template for C++ CMake prjects, including application, test and code analysis

## Build
```bash
$ ./scripts/build
```

## Test
```bash
$ ./scripts/test
```

## Code analysis
```bash
$ ./scripts/analyze
```

## CMake Options
| OPTION                        | DESCRIPTION                                       |
|-------------------------------|---------------------------------------------------|
| ENABLE_TESTING                | Enable building test applications                 |
| ENABLE_CLANG_TIDY             | Enable Enable static analysis with clang-tidy     |
| ENABLE_CPPCHECK               | Enable static analysis with cppcheck              |
| ENABLE_INCLUDE_WHAT_YOU_USE   | Enable static analysis with include-what-you-use  |

## Reference
A more in depth example can be found [here](https://github.com/cpp-best-practices/cpp_starter_project).