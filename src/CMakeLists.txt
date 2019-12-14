add_library(algo
    algo.hh algo.cpp)
set_target_properties(algo PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>"
)

add_executable(main
    main.cpp)
target_link_libraries(main
    algo)

