
# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.

#find_package(JsonCpp REQUIRED)

include_directories(/home/ub1804/recovery/dependent/jsoncpp/include )


add_llvm_library( compartment MODULE BUILDTREE_ONLY
HexboxAnalysis.cpp  
  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )



target_link_libraries(compartment  /home/ub1804/recovery/dependent/jsoncpp/build/lib/libjsoncpp.so
 )

