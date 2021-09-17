# cmake-cpp-project-template
Template for C++ CMake prjects, including application, test and code analysis

## Build
```bash
$ cmake -S . -B build
$ cmake --build build --target all
```

## CMake Options
| OPTION         	| DESCRIPTION                                    	|
|----------------	|------------------------------------------------	|
| BUILD_TEST     	| Enable building test applications              	|
| RUN_CLANG_TIDY 	| Enable code analysis with clang-tidy           	|
| RUN_CPPCHECK   	| Enable code analysis with cppcheck             	|
| RUN_IWYU       	| Enable code analysis with include-what-you-use 	|
| RUN_LWYU       	| Enable code analysis with link-what-you-use    	|