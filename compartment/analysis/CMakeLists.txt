
# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.

#find_package(JsonCpp REQUIRED)

include_directories(/home/op/for_Jay/dependency/jsoncpp/include )


add_llvm_library( analysis MODULE BUILDTREE_ONLY
HexboxAnalysis.cpp  
  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )



target_link_libraries(analysis  /home/op/for_Jay/dependency/jsoncpp/build/lib/libjsoncpp.so.1.9.5
 )
