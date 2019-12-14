find_package(Catch2 REQUIRED)

add_executable(test_algo test_algo.cpp)
target_link_libraries(test_algo
    Catch2::Catch2
    algo
    )

include(CTest)
include(ParseAndAddCatchTests)
ParseAndAddCatchTests(test_algo)
