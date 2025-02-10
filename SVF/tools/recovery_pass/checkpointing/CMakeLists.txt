set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(Threads REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(JSONCPP jsoncpp)
link_libraries(${JSONCPP_LIBRARIES})


INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${Jsoncpp_INCLUDE_DIRS})

add_library(PassCheckpointing SHARED PassCheckpointing.cpp)
target_link_libraries(PassCheckpointing PRIVATE Svf) 


link_libraries(PassCheckpointing)

set_target_properties(PassCheckpointing PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )

target_compile_features(PassCheckpointing PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(PassCheckpointing PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)

