## Version is arbitrarily set
cmake_minimum_required(VERSION 3.16)

project(intrumentation_lib)

add_custom_command(
  OUTPUT link_lib.ll
  COMMAND clang++ -DNUM_INST=10 -emit-llvm -c -S ${CMAKE_CURRENT_SOURCE_DIR}/link_lib.cpp -o ${CMAKE_CURRENT_BINARY_DIR}/link_lib.ll
  DEPENDS link_lib.cpp
  COMMENT "Generating link_lib.cpp bitcode"
)

add_custom_target(
    link_lib_target ALL
    DEPENDS link_lib.ll
)


add_custom_command(
  OUTPUT link_lib.o
  COMMAND clang++  -c ${CMAKE_CURRENT_SOURCE_DIR}/link_lib.cpp -o ${CMAKE_CURRENT_BINARY_DIR}/link_lib.o
  DEPENDS link_lib.cpp
  COMMENT "Generating link_lib.cpp bitcode"
)

add_custom_target(
    object_file_target ALL
    DEPENDS link_lib.o
)
