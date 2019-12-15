cmake_minimum_required(VERSION 3.5)
project(libalgo VERSION 1.0.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

enable_testing()

# Run conan install automatically, or display warning if conan is not installed
include(cmake/conan_config.cmake)
include(cmake/cpack_config.cmake)
set(CTEST_MEMORYCHECK_COMMAND valgrind)

add_subdirectory(src)
add_subdirectory(test)
