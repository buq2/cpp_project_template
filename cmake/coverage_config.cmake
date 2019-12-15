find_program(gcovexecutable "gcov")
if(NOT gcovexecutable)
    message(WARNING "Tool gcov is not installed. Coverage reports will not be generated.")
else()
    if(NOT EXISTS "${CMAKE_BINARY_DIR}/CodeCoverage.cmake")
        message(STATUS "Downloading CodeCoverage.cmake from https://raw.githubusercontent.com/bilke/cmake-modules/master/CodeCoverage.cmake")
        file(DOWNLOAD "https://raw.githubusercontent.com/bilke/cmake-modules/master/CodeCoverage.cmake"
                      "${CMAKE_BINARY_DIR}/CodeCoverage.cmake")
    endif()

    include(${CMAKE_BINARY_DIR}/CodeCoverage.cmake)
    append_coverage_compiler_flags()
endif()
