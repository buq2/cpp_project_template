cmake_minimum_required(VERSION 3.5)
project(libalgo VERSION 1.0.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

enable_testing()

# Run conan install automatically, or display warning if conan is not installed
include(cmake/conan_config.cmake)
include(cmake/cpack_config.cmake)
option(WITH_COVERAGE "Test with code coverage" FALSE)
IF (WITH_COVERAGE)
    include(cmake/coverage_config.cmake)
ENDIF()
set(CTEST_MEMORYCHECK_COMMAND valgrind)

add_subdirectory(src)

option(BUILD_TESTS "Test with code coverage" TRUE)
IF (BUILD_TESTS)
    add_subdirectory(test)
ENDIF()
