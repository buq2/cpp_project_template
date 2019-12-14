#define CATCH_CONFIG_MAIN

#include <catch2/catch.hpp>
#include <algo.hh>

TEST_CASE( "Algo test", "[algo]" ) {
    Algo algo;
    REQUIRE( algo.Get() == 1 );
}
