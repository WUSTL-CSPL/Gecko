project(enfoce_compt)

# DEPENDS
# intrinsics_gen
# PLUGIN_TOOL
# opt


find_package(PkgConfig REQUIRED)
pkg_check_modules(JSONCPP jsoncpp)
link_libraries(${JSONCPP_LIBRARIES})

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${Jsoncpp_INCLUDE_DIRS})

add_library(EnforceCMPT SHARED HexboxApplication.cpp)
target_link_libraries(EnforceCMPT PRIVATE Svf ${JSONCPP_LIBRARIES}) 


link_libraries(EnforceCMPT)

set_target_properties(EnforceCMPT PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )


target_compile_features(EnforceCMPT PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(EnforceCMPT PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)

