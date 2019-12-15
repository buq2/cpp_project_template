find_package(Catch2 REQUIRED)

add_executable(test_algo test_algo.cpp)
target_link_libraries(test_algo
    Catch2::Catch2
    algo
    )

IF (WITH_COVERAGE)
    setup_target_for_coverage_gcovr_html(NAME coverage EXECUTABLE test_algo)
ENDIF()

include(CTest)
include(ParseAndAddCatchTests)
ParseAndAddCatchTests(test_algo)
