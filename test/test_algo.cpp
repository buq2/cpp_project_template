#define CATCH_CONFIG_MAIN

#include <algo.hh>
#include <catch2/catch.hpp>

TEST_CASE("Algo test", "[algo]") {
  Algo algo;
  REQUIRE(algo.Get() == 1);
}
