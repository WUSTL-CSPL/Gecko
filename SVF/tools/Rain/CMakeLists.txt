set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)


INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})


add_library(rain SHARED dependency_analysis/rain.cpp dependency_analysis/rain.h dependency_analysis/dependency_walker.cpp dependency_analysis/instrumenter_loger.cpp)
target_link_libraries(rain PUBLIC Svf) # ${llvm_libs} Threads::Threads)
                                #  Svf)
                                #  ${llvm_bitwriter}
                                #  ${llvm_irreader})

link_libraries(rain)

set_target_properties(rain PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(rain PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(rain PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)

add_library(path_logging SHARED path_logging/path_logging.cpp path_logging/path_logging.h)
target_link_libraries(path_logging PUBLIC Svf) # ${llvm_libs} Threads::Threads)


link_libraries(path_logging)

set_target_properties(path_logging PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(path_logging PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(path_logging PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)


add_library(profiling SHARED profiling/profiling.cpp profiling/profiling.h)
target_link_libraries(profiling PUBLIC Svf) # ${llvm_libs} Threads::Threads)


link_libraries(profiling)

set_target_properties(profiling PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(profiling PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(profiling PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)



add_library(fake_dfi SHARED fake_dfi/fake_dfi.cpp fake_dfi/fake_dfi.h)
target_link_libraries(fake_dfi PUBLIC Svf) # ${llvm_libs} Threads::Threads)


link_libraries(fake_dfi)

set_target_properties(fake_dfi PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(fake_dfi PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(fake_dfi PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)


add_library(idle_pass SHARED idle_pass/idle_pass.cpp idle_pass/idle_pass.h)
target_link_libraries(idle_pass PUBLIC Svf) # ${llvm_libs} Threads::Threads)


link_libraries(idle_pass)

set_target_properties(idle_pass PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(idle_pass PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(idle_pass PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)

add_library(path_sig SHARED path_sig/path_sig.cpp path_sig/path_sig.h)
target_link_libraries(path_sig PUBLIC Svf) # ${llvm_libs} Threads::Threads)


link_libraries(path_sig)

set_target_properties(path_sig PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(path_sig PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(path_sig PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)

add_subdirectory(path_sig_and_sec_sen)
