
# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.




add_library(path_sig_and_sec_sen SHARED path_sig_and_sec_sen.cpp path_sig_and_sec_sen.h)
target_link_libraries(path_sig_and_sec_sen PUBLIC Svf) # 


link_libraries(path_sig_and_sec_sen)

set_target_properties(path_sig_and_sec_sen PROPERTIES
                        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )



target_compile_features(path_sig_and_sec_sen PRIVATE cxx_range_for cxx_auto_type)


set_target_properties(path_sig_and_sec_sen PROPERTIES
	COMPILE_FLAGS "-fno-rtti"
)
