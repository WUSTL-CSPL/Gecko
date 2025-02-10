; ModuleID = 'libsecsen.cpp'
source_filename = "libsecsen.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"struct.std::pair" = type <{ %"struct.std::_Rb_tree_const_iterator", i8, [7 x i8] }>
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair.3" = type <{ %"struct.std::_Rb_tree_iterator", i8, [7 x i8] }>
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_node" = type <{ %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.__gnu_cxx::__aligned_membuf" = type { [4 x i8] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"struct.std::pair.5" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Identity" = type { i8 }
%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node" = type { %"class.std::_Rb_tree"* }

$_ZNSt3setIiSt4lessIiESaIiEEC2Ev = comdat any

$_ZNSt3setIiSt4lessIiESaIiEED2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZTW12sen_func_set = comdat any

$_ZNSt3setIiSt4lessIiESaIiEE5clearEv = comdat any

$_ZTW11cspl_df_set = comdat any

$_ZNSt6vectorIiSaIiEE6assignEmRKi = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZTW16cspl_func_df_set = comdat any

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

$_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv = comdat any

$_ZTW16all_sen_func_set = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNSt3setIiSt4lessIiESaIiEE6insertERKi = comdat any

$_ZTW15cspl_all_df_set = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_drop_nodeEPSt13_Rb_tree_nodeIiE = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE7destroyIiEEvRS2_PT_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeIiE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE7destroyIiEEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m = comdat any

$_ZNSaISt13_Rb_tree_nodeIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED2Ev = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2Ev = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeIiEEC2Ev = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE13_M_initializeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_ = comdat any

$_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE8_M_resetEv = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi = comdat any

$_ZNKSt6vectorIiSaIiEE8capacityEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_ = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZSt4swapIPiEvRT_S2_ = comdat any

$_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_ = comdat any

$_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEELb1EE7_S_baseES6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_ = comdat any

$_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC2IRSt17_Rb_tree_iteratorIiERbvEEOT_OT0_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi = comdat any

$_ZNKSt9_IdentityIiEclERKi = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeC2ERS5_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2IS1_bvEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv = comdat any

$_ZNKSt4lessIiEclERKiS2_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE = comdat any

$_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorIiEmmEv = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE = comdat any

$_ZNKSt13_Rb_tree_nodeIiE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeclIRKiEEPSt13_Rb_tree_nodeIiEOT_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIJRKiEEEPSt13_Rb_tree_nodeIiEDpOT_ = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_construct_nodeIJRKiEEEvPSt13_Rb_tree_nodeIiEDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZSt7forwardIRSt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE = comdat any

$_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZTW7df_size = comdat any

$_ZTW11all_df_size = comdat any

@path_length = dso_local thread_local global i32 0, align 4
@my_hash = dso_local thread_local global i64 0, align 8
@input_hash = dso_local thread_local global i64 0, align 8
@batch_input_hash = dso_local thread_local global [5 x i64] zeroinitializer, align 16
@batch_path_hash = dso_local thread_local global [5 x i64] zeroinitializer, align 16
@batch_path_length = dso_local thread_local global [5 x i32] zeroinitializer, align 16
@batch_time = dso_local thread_local global [5 x i64] zeroinitializer, align 16
@batch_count = dso_local thread_local global i32 0, align 4
@logbuf = dso_local thread_local global [1000 x double] zeroinitializer, align 16
@log_count = dso_local thread_local global i32 0, align 4
@cspl_start = dso_local thread_local global i32 0, align 4
@start_time = dso_local thread_local global i64 0, align 8
@df_start = dso_local thread_local global i8 0, align 1
@sen_func_set = dso_local thread_local global %"class.std::set" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@all_sen_func_set = dso_local thread_local global %"class.std::set" zeroinitializer, align 8
@cspl_df_set = dso_local thread_local global %"class.std::vector" zeroinitializer, align 8
@cspl_all_df_set = dso_local thread_local global %"class.std::vector" zeroinitializer, align 8
@cspl_func_df_set = dso_local thread_local global %"class.std::vector" zeroinitializer, align 8
@df_size = dso_local thread_local global i32 0, align 4
@all_df_size = dso_local thread_local global i32 0, align 4
@cspl_stop = external thread_local global i8, align 1
@outfile = external dso_local global %"class.std::basic_ofstream"*, align 8
@.str = private unnamed_addr constant [22 x i8] c"/tmp/func_profile.txt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" [ \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" ] \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"H \00", align 1
@__tls_guard = internal thread_local global i8 0, align 1

@_ZTH12sen_func_set = dso_local alias void (), void ()* @__tls_init
@_ZTH11cspl_df_set = dso_local alias void (), void ()* @__tls_init
@_ZTH16cspl_func_df_set = dso_local alias void (), void ()* @__tls_init
@_ZTH16all_sen_func_set = dso_local alias void (), void ()* @__tls_init
@_ZTH15cspl_all_df_set = dso_local alias void (), void ()* @__tls_init

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* nonnull align 8 dereferenceable(48) @sen_func_set) #2
  %0 = call i32 @__cxa_thread_atexit(void (i8*)* bitcast (void (%"class.std::set"*)* @_ZNSt3setIiSt4lessIiESaIiEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::set", %"class.std::set"* @sen_func_set, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2Ev(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %_M_t)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %_M_t) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* nonnull align 8 dereferenceable(48) @all_sen_func_set) #2
  %0 = call i32 @__cxa_thread_atexit(void (i8*)* bitcast (void (%"class.std::set"*)* @_ZNSt3setIiSt4lessIiESaIiEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::set", %"class.std::set"* @all_sen_func_set, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 -1, i32* %ref.tmp, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) @cspl_df_set, i64 300000, i32* nonnull align 4 dereferenceable(4) %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  %0 = call i32 @__cxa_thread_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorIiSaIiEED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @cspl_df_set to i8*), i8* @__dso_handle) #2
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, i64 %1, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  %4 = load i32*, i32** %__value.addr, align 8
  invoke void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1, i64 %3, i32* nonnull align 4 dereferenceable(4) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %8) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %4) #2
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %5) #2
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %9) #2
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 -1, i32* %ref.tmp, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) @cspl_all_df_set, i64 300000, i32* nonnull align 4 dereferenceable(4) %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  %0 = call i32 @__cxa_thread_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorIiSaIiEED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @cspl_all_df_set to i8*), i8* @__dso_handle) #2
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 -1, i32* %ref.tmp, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) @cspl_func_df_set, i64 40, i32* nonnull align 4 dereferenceable(4) %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  %0 = call i32 @__cxa_thread_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorIiSaIiEED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @cspl_func_df_set to i8*), i8* @__dso_handle) #2
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp1) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i64 @_Z6hasherm(i64 %value) #4 {
entry:
  %value.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  store i64 %0, i64* %hash, align 8
  %1 = load i64, i64* %hash, align 8
  %shl = shl i64 %1, 16
  %2 = load i64, i64* %hash, align 8
  %xor = xor i64 %2, %shl
  store i64 %xor, i64* %hash, align 8
  %3 = load i64, i64* %hash, align 8
  %shr = lshr i64 %3, 5
  %4 = load i64, i64* %hash, align 8
  %xor1 = xor i64 %4, %shr
  store i64 %xor1, i64* %hash, align 8
  %5 = load i64, i64* %hash, align 8
  %shl2 = shl i64 %5, 1
  %6 = load i64, i64* %hash, align 8
  %xor3 = xor i64 %6, %shl2
  store i64 %xor3, i64* %hash, align 8
  %7 = load i64, i64* %hash, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_path_sig(i32 %name, i32 %bsize) #4 {
entry:
  %name.addr = alloca i32, align 4
  %bsize.addr = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  store i32 %bsize, i32* %bsize.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %bsize.addr, align 4
  %3 = load i32, i32* @path_length, align 4
  %add = add i32 %3, %2
  store i32 %add, i32* @path_length, align 4
  %4 = load i64, i64* @my_hash, align 8
  %5 = load i32, i32* %name.addr, align 4
  %conv = sext i32 %5 to i64
  %add2 = add i64 %4, %conv
  %call = call i64 @_Z6hasherm(i64 %add2)
  store i64 %call, i64* @my_hash, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_path_sig_start(i32 %name) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %name.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp6 = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  %0 = load i8, i8* @cspl_stop, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end12

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @batch_path_length, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_path_hash, i64 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_input_hash, i64 0, i64 %idxprom3
  store i64 0, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @batch_count, align 4
  store i64 0, i64* @my_hash, align 8
  store i32 0, i32* @path_length, align 4
  store i64 0, i64* @input_hash, align 8
  %6 = call %"class.std::set"* @_ZTW12sen_func_set()
  call void @_ZNSt3setIiSt4lessIiESaIiEE5clearEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %6) #2
  %7 = call %"class.std::vector"* @_ZTW11cspl_df_set()
  %8 = call %"class.std::vector"* @_ZTW11cspl_df_set()
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %8) #2
  store i32 -1, i32* %ref.tmp, align 4
  call void @_ZNSt6vectorIiSaIiEE6assignEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %7, i64 %call, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  %9 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %10 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %call5 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %10) #2
  store i32 -1, i32* %ref.tmp6, align 4
  call void @_ZNSt6vectorIiSaIiEE6assignEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9, i64 %call5, i32* nonnull align 4 dereferenceable(4) %ref.tmp6)
  store i32 0, i32* @log_count, align 4
  store i32 1, i32* @cspl_start, align 4
  store i8 1, i8* @df_start, align 1
  store i32 0, i32* @df_size, align 4
  %call7 = call i64 @clock() #2
  store i64 %call7, i64* @start_time, align 8
  %11 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %tobool8 = icmp ne %"class.std::basic_ofstream"* %11, null
  br i1 %tobool8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %for.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 512) #18
  %12 = bitcast i8* %call10 to %"class.std::basic_ofstream"*
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %12)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then9
  store %"class.std::basic_ofstream"* %12, %"class.std::basic_ofstream"** @outfile, align 8
  %13 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %call11 = call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %call11)
  br label %if.end12

lpad:                                             ; preds = %if.then9
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call10) #19
  br label %eh.resume

if.end12:                                         ; preds = %if.then, %invoke.cont, %for.end
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13
}

; Function Attrs: noinline uwtable
define weak_odr hidden %"class.std::set"* @_ZTW12sen_func_set() #6 comdat {
  call void @_ZTH12sen_func_set()
  ret %"class.std::set"* @sen_func_set
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3setIiSt4lessIiESaIiEE5clearEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %_M_t) #2
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr hidden %"class.std::vector"* @_ZTW11cspl_df_set() #6 comdat {
  call void @_ZTH11cspl_df_set()
  ret %"class.std::vector"* @cspl_df_set
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE6assignEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__val.addr = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i32*, i32** %__val.addr, align 8
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1, i64 %0, i32* nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define weak_odr hidden %"class.std::vector"* @_ZTW16cspl_func_df_set() #6 comdat {
  call void @_ZTH16cspl_func_df_set()
  ret %"class.std::vector"* @cspl_func_df_set
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #7

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #8

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248)) unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #10

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248), i8*, i32) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_OpenmodeS_(i32 %__a, i32 %__b) #4 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_path_sig_end(i32 %name) #5 {
entry:
  %name.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i24 = alloca i32, align 4
  %i48 = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* @cspl_start, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* @cspl_start, align 4
  %2 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %3 = bitcast %"class.std::basic_ofstream"* %2 to %"class.std::basic_ostream"*
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %4 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %5 = bitcast %"class.std::basic_ofstream"* %4 to %"class.std::basic_ostream"*
  %6 = load i32, i32* @path_length, align 4
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %5, i32 %6)
  %call3 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %7 = load i64, i64* @my_hash, align 8
  %call4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call3, i64 %7)
  %call5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %8 = load i64, i64* @input_hash, align 8
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call5, i64 %8)
  %call7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @batch_count, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %12 = bitcast %"class.std::basic_ofstream"* %11 to %"class.std::basic_ostream"*
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @batch_path_length, i64 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %call8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %12, i32 %14)
  %call9 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_path_hash, i64 0, i64 %idxprom10
  %16 = load i64, i64* %arrayidx11, align 8
  %call12 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call9, i64 %16)
  %call13 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_input_hash, i64 0, i64 %idxprom14
  %18 = load i64, i64* %arrayidx15, align 8
  %call16 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call13, i64 %18)
  %call17 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_time, i64 0, i64 %idxprom18
  %20 = load i64, i64* %arrayidx19, align 8
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call17, i64 %20)
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %23 = bitcast %"class.std::basic_ofstream"* %22 to %"class.std::basic_ostream"*
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %24 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %25 = bitcast %"class.std::basic_ofstream"* %24 to %"class.std::basic_ostream"*
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %i24, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %for.end
  %26 = load i32, i32* %i24, align 4
  %27 = load i32, i32* @log_count, align 4
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond25
  %28 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %29 = bitcast %"class.std::basic_ofstream"* %28 to %"class.std::basic_ostream"*
  %30 = load i32, i32* %i24, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds [1000 x double], [1000 x double]* @logbuf, i64 0, i64 %idxprom28
  %31 = load double, double* %arrayidx29, align 8
  %call30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, double %31)
  %call31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %for.inc32

for.inc32:                                        ; preds = %for.body27
  %32 = load i32, i32* %i24, align 4
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %i24, align 4
  br label %for.cond25, !llvm.loop !7

for.end34:                                        ; preds = %for.cond25
  %33 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %34 = bitcast %"class.std::basic_ofstream"* %33 to %"class.std::basic_ostream"*
  %call35 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %35 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %36 = bitcast %"class.std::basic_ofstream"* %35 to %"class.std::basic_ostream"*
  %call36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %37 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %38 = bitcast %"class.std::basic_ofstream"* %37 to %"class.std::basic_ostream"*
  %39 = call %"class.std::set"* @_ZTW12sen_func_set()
  %call37 = call i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %39) #2
  %call38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %38, i64 %call37)
  %call39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %40 = call %"class.std::set"* @_ZTW16all_sen_func_set()
  %call40 = call i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %40) #2
  %call41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call39, i64 %call40)
  %call42 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @df_size, align 4
  %call43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call42, i32 %41)
  %call44 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* @all_df_size, align 4
  %call45 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call44, i32 %42)
  %43 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %44 = bitcast %"class.std::basic_ofstream"* %43 to %"class.std::basic_ostream"*
  %call46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %45 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %46 = bitcast %"class.std::basic_ofstream"* %45 to %"class.std::basic_ostream"*
  %call47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %i48, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc62, %for.end34
  %47 = load i32, i32* %i48, align 4
  %conv = sext i32 %47 to i64
  %48 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %call50 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %48) #2
  %cmp51 = icmp ult i64 %conv, %call50
  br i1 %cmp51, label %for.body52, label %for.end64

for.body52:                                       ; preds = %for.cond49
  %49 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %50 = load i32, i32* %i48, align 4
  %conv53 = sext i32 %50 to i64
  %call54 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %49, i64 %conv53) #2
  %51 = load i32, i32* %call54, align 4
  %cmp55 = icmp sgt i32 %51, 0
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.body52
  %52 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %53 = bitcast %"class.std::basic_ofstream"* %52 to %"class.std::basic_ostream"*
  %54 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %55 = load i32, i32* %i48, align 4
  %conv57 = sext i32 %55 to i64
  %call58 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %54, i64 %conv57) #2
  %56 = load i32, i32* %call58, align 4
  %call59 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %53, i32 %56)
  %call60 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body52
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %57 = load i32, i32* %i48, align 4
  %inc63 = add nsw i32 %57, 1
  store i32 %inc63, i32* %i48, align 4
  br label %for.cond49, !llvm.loop !8

for.end64:                                        ; preds = %for.cond49
  %58 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %59 = bitcast %"class.std::basic_ofstream"* %58 to %"class.std::basic_ostream"*
  %call65 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %60 = call %"class.std::set"* @_ZTW12sen_func_set()
  call void @_ZNSt3setIiSt4lessIiESaIiEE5clearEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %60) #2
  store i32 0, i32* @log_count, align 4
  store i32 0, i32* @batch_count, align 4
  %61 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %62 = bitcast %"class.std::basic_ofstream"* %61 to %"class.std::basic_ostream"*
  %call66 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62)
  br label %return

return:                                           ; preds = %for.end64, %if.then
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %call = call i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %_M_t) #2
  ret i64 %call
}

; Function Attrs: noinline uwtable
define weak_odr hidden %"class.std::set"* @_ZTW16all_sen_func_set() #6 comdat {
  call void @_ZTH16all_sen_func_set()
  ret %"class.std::set"* @all_sen_func_set
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %2
  ret i32* %add.ptr
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_inputhash(i32 %num, i32 %batch, ...) #4 {
entry:
  %num.addr = alloca i32, align 4
  %batch.addr = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %tmp = alloca double, align 8
  %value = alloca i64, align 8
  %nowtime = alloca i64, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %batch, i32* %batch.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %2 = load i32, i32* @batch_count, align 4
  %3 = load i32, i32* %batch.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %batch.addr, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @batch_count, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 3
  %reg_save_area = load i8*, i8** %7, align 16
  %8 = getelementptr i8, i8* %reg_save_area, i32 %fp_offset
  %9 = bitcast i8* %8 to double*
  %10 = add i32 %fp_offset, 16
  store i32 %10, i32* %fp_offset_p, align 4
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %11 = bitcast i8* %overflow_arg_area to double*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double* [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ]
  %12 = load double, double* %vaarg.addr, align 8
  store double %12, double* %tmp, align 8
  %13 = bitcast double* %tmp to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %value, align 8
  %15 = load i64, i64* @input_hash, align 8
  %16 = load i64, i64* %value, align 8
  %add7 = add i64 %15, %16
  %call = call i64 @_Z6hasherm(i64 %add7)
  store i64 %call, i64* @input_hash, align 8
  %17 = load i64, i64* @input_hash, align 8
  %18 = load i32, i32* %batch.addr, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [5 x i64], [5 x i64]* @batch_input_hash, i64 0, i64 %idxprom
  store i64 %17, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  %20 = load i32, i32* @path_length, align 4
  %21 = load i32, i32* %batch.addr, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* @batch_path_length, i64 0, i64 %idxprom10
  store i32 %20, i32* %arrayidx11, align 4
  %22 = load i64, i64* @my_hash, align 8
  %23 = load i32, i32* %batch.addr, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_path_hash, i64 0, i64 %idxprom12
  store i64 %22, i64* %arrayidx13, align 8
  %call14 = call i64 @clock() #2
  store i64 %call14, i64* %nowtime, align 8
  %24 = load i64, i64* %nowtime, align 8
  %25 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %24, %25
  %26 = load i32, i32* %batch.addr, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [5 x i64], [5 x i64]* @batch_time, i64 0, i64 %idxprom15
  store i64 %sub, i64* %arrayidx16, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_logging(i32 %num, ...) #4 {
entry:
  %num.addr = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %tmp = alloca double, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4, align 16
  %5 = getelementptr i8, i8* %reg_save_area, i32 %fp_offset
  %6 = bitcast i8* %5 to double*
  %7 = add i32 %fp_offset, 16
  store i32 %7, i32* %fp_offset_p, align 4
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %8 = bitcast i8* %overflow_arg_area to double*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double* [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load double, double* %vaarg.addr, align 8
  store double %9, double* %tmp, align 8
  %10 = load double, double* %tmp, align 8
  %11 = load i32, i32* @log_count, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @logbuf, i64 0, i64 %idxprom
  store double %10, double* %arrayidx, align 8
  %12 = load i32, i32* @log_count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @log_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %13 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %13, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_sensitive(i32 %num, ...) #5 {
entry:
  %num.addr = alloca i32, align 4
  %coerce = alloca %"struct.std::pair", align 8
  %coerce11 = alloca %"struct.std::pair", align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp eq i32 %3, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  store i8 0, i8* @df_start, align 1
  br label %if.end8

if.else:                                          ; preds = %if.then2
  %4 = load i32, i32* %num.addr, align 4
  %cmp5 = icmp eq i32 %4, -2
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  store i8 1, i8* @df_start, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then4
  br label %return

if.end9:                                          ; preds = %if.end
  %5 = call %"class.std::set"* @_ZTW12sen_func_set()
  %call = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* nonnull align 8 dereferenceable(48) %5, i32* nonnull align 4 dereferenceable(4) %num.addr)
  %6 = bitcast %"struct.std::pair"* %coerce to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %7 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %6, i32 0, i32 0
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call, 0
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %6, i32 0, i32 1
  %10 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call, 1
  store i8 %10, i8* %9, align 8
  %11 = call %"class.std::set"* @_ZTW16all_sen_func_set()
  %call10 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* nonnull align 8 dereferenceable(48) %11, i32* nonnull align 4 dereferenceable(4) %num.addr)
  %12 = bitcast %"struct.std::pair"* %coerce11 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %13 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %12, i32 0, i32 0
  %14 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call10, 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %15 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %12, i32 0, i32 1
  %16 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call10, 1
  store i8 %16, i8* %15, align 8
  %17 = load i32, i32* @df_size, align 4
  %18 = call %"class.std::vector"* @_ZTW16cspl_func_df_set()
  %19 = load i32, i32* %num.addr, align 4
  %conv = sext i32 %19 to i64
  %call12 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %18, i64 %conv) #2
  store i32 %17, i32* %call12, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.end8, %if.then
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* nonnull align 8 dereferenceable(48) %this, i32* nonnull align 4 dereferenceable(4) %__x) #5 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair", align 8
  %this.addr = alloca %"class.std::set"*, align 8
  %__x.addr = alloca i32*, align 8
  %__p = alloca %"struct.std::pair.3", align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__x.addr, align 8
  %call = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %_M_t, i32* nonnull align 4 dereferenceable(4) %0)
  %1 = bitcast %"struct.std::pair.3"* %__p to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %2 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %1, i32 0, i32 0
  %3 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call, 0
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %1, i32 0, i32 1
  %5 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %call, 1
  store i8 %5, i8* %4, align 8
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %__p, i32 0, i32 0
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %__p, i32 0, i32 1
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC2IRSt17_Rb_tree_iteratorIiERbvEEOT_OT0_(%"struct.std::pair"* nonnull align 8 dereferenceable(9) %retval, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %first, i8* nonnull align 1 dereferenceable(1) %second)
  %6 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %7 = load { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %6, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_path_df(i32 %name, i32 %bsize) #5 {
entry:
  %name.addr = alloca i32, align 4
  %bsize.addr = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  store i32 %bsize, i32* %bsize.addr, align 4
  %0 = load i32, i32* @cspl_start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @cspl_stop, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end16

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, i8* @df_start, align 1
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %if.end16

if.end4:                                          ; preds = %if.end
  %3 = call %"class.std::vector"* @_ZTW11cspl_df_set()
  %4 = load i32, i32* %name.addr, align 4
  %conv = sext i32 %4 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %3, i64 %conv) #2
  %5 = load i32, i32* %call, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end4
  %6 = load i32, i32* %bsize.addr, align 4
  %7 = call %"class.std::vector"* @_ZTW11cspl_df_set()
  %8 = load i32, i32* %name.addr, align 4
  %conv6 = sext i32 %8 to i64
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %7, i64 %conv6) #2
  store i32 %6, i32* %call7, align 4
  %9 = load i32, i32* %bsize.addr, align 4
  %10 = load i32, i32* @df_size, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* @df_size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end4
  %11 = call %"class.std::vector"* @_ZTW15cspl_all_df_set()
  %12 = load i32, i32* %name.addr, align 4
  %conv9 = sext i32 %12 to i64
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %11, i64 %conv9) #2
  %13 = load i32, i32* %call10, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  %14 = load i32, i32* %bsize.addr, align 4
  %15 = call %"class.std::vector"* @_ZTW15cspl_all_df_set()
  %16 = load i32, i32* %name.addr, align 4
  %conv13 = sext i32 %16 to i64
  %call14 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %15, i64 %conv13) #2
  store i32 %14, i32* %call14, align 4
  %17 = load i32, i32* %bsize.addr, align 4
  %18 = load i32, i32* @all_df_size, align 4
  %add15 = add nsw i32 %18, %17
  store i32 %add15, i32* @all_df_size, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then3, %if.then12, %if.end8
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr hidden %"class.std::vector"* @_ZTW15cspl_all_df_set() #6 comdat {
  call void @_ZTH15cspl_all_df_set()
  ret %"class.std::vector"* @cspl_all_df_set
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %_M_impl) #2
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %_M_impl2) #2
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node"* %__x) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2) #2
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #2
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_drop_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %5) #2
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #17
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_drop_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node"* %__p) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %0) #2
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %1) #2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node"* %__p) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %call2 = invoke i32* @_ZNSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE7destroyIiEEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call, i32* %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node"* %__p) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call, %"struct.std::_Rb_tree_node"* %0, i64 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE7destroyIiEEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, i32* %__p) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, i32* %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %_M_storage) #2
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, i32* %__p) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %call = call i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this1) #2
  %0 = bitcast i8* %call to i32*
  ret i32* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %this1, i32 0, i32 0
  %0 = bitcast [4 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_Rb_tree_node"* %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %"struct.std::_Rb_tree_node"* %__p, i64 %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2Ev(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEC2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %_M_impl)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEC2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #2
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false)
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeIiEEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 0
  store i32 0, i32* %_M_color, align 8
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header4, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header3, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header6 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header6, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header5, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #2
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i32*, i32** %__value.addr, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %4) #2
  %call2 = call i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %1, i64 %2, i32* nonnull align 4 dereferenceable(4) %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store i32* %call2, i32** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl6) #2
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i32* %call, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load i32*, i32** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store i32* %1, i32** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load i32*, i32** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %0, %"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %2) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this, %"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this, i64 %__n, i8* %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #21
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #14

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__x, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %1, i64 %2, i32* nonnull align 4 dereferenceable(4) %3)
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__x) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %0, i64 %1, i32* nonnull align 4 dereferenceable(4) %2)
  ret i32* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__x) #5 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %0, i64 %1, i32* nonnull align 4 dereferenceable(4) %2)
  ret i32* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__value.addr, align 8
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %1, i32* nonnull align 4 dereferenceable(4) %2)
  ret i32* %call1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  %__niter = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %__first.addr, align 8
  ret i32* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #5 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  %call = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %0)
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %__it) #4 comdat align 2 {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i32* %__p, i64 %__n) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i32* %__p, i64 %__n) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* nonnull align 1 dereferenceable(1) %this, i32* %__p, i64 %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #5 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1) #4 comdat align 2 {
entry:
  %.addr = alloca i32*, align 8
  %.addr1 = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  store i32* %1, i32** %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE8_M_resetEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %_M_impl)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EE8_M_resetEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"** %this.addr, align 8
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header3, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header2, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header5, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header4, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__val.addr = alloca i32*, align 8
  %__tmp = alloca %"class.std::vector", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #2
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__val.addr, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #2
  call void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %__tmp, i64 %1, i32* nonnull align 4 dereferenceable(4) %2, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call2)
  %4 = bitcast %"class.std::vector"* %__tmp to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl3) #2
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %__tmp) #2
  br label %if.end22

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %__n.addr, align 8
  %call4 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #2
  %cmp5 = icmp ugt i64 %6, %call4
  br i1 %cmp5, label %if.then6, label %if.else19

if.then6:                                         ; preds = %if.else
  %call7 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #2
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store i32* %call7, i32** %coerce.dive, align 8
  %call9 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #2
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  store i32* %call9, i32** %coerce.dive10, align 8
  %7 = load i32*, i32** %__val.addr, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load i32*, i32** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %9 = load i32*, i32** %coerce.dive12, align 8
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(i32* %8, i32* %9, i32* nonnull align 4 dereferenceable(4) %7)
  %10 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %11 = load i32*, i32** %_M_finish, align 8
  %12 = load i64, i64* %__n.addr, align 8
  %call14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #2
  %sub = sub i64 %12, %call14
  %13 = load i32*, i32** %__val.addr, align 8
  %14 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call15 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %14) #2
  %call16 = call i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %11, i64 %sub, i32* nonnull align 4 dereferenceable(4) %13, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call15)
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl17, i32 0, i32 1
  store i32* %call16, i32** %_M_finish18, align 8
  br label %if.end

if.else19:                                        ; preds = %if.else
  %16 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %16, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl20, i32 0, i32 0
  %17 = load i32*, i32** %_M_start, align 8
  %18 = load i64, i64* %__n.addr, align 8
  %19 = load i32*, i32** %__val.addr, align 8
  %call21 = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %17, i64 %18, i32* nonnull align 4 dereferenceable(4) %19)
  call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1, i32* %call21) #2
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then6
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %__x.addr, align 8
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %0, i32 0, i32 0
  call void @_ZSt4swapIPiEvRT_S2_(i32** nonnull align 8 dereferenceable(8) %_M_start, i32** nonnull align 8 dereferenceable(8) %_M_start2) #2
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 1
  %1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %__x.addr, align 8
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %1, i32 0, i32 1
  call void @_ZSt4swapIPiEvRT_S2_(i32** nonnull align 8 dereferenceable(8) %_M_finish, i32** nonnull align 8 dereferenceable(8) %_M_finish3) #2
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 2
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %__x.addr, align 8
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %2, i32 0, i32 2
  call void @_ZSt4swapIPiEvRT_S2_(i32** nonnull align 8 dereferenceable(8) %_M_end_of_storage, i32** nonnull align 8 dereferenceable(8) %_M_end_of_storage4) #2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(i32* %__first.coerce, i32* %__last.coerce, i32* nonnull align 4 dereferenceable(4) %__value) #5 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__value.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i32* %2)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i32* %5)
  %6 = load i32*, i32** %__value.addr, align 8
  call void @_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* %call, i32* %call5, i32* nonnull align 4 dereferenceable(4) %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %retval, i32** nonnull align 8 dereferenceable(8) %_M_start) #2
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %retval, i32** nonnull align 8 dereferenceable(8) %_M_finish) #2
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i32* %__pos) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__pos.addr = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i32* %__pos, i32** %__pos.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i32*, i32** %__pos.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %2 = load i32*, i32** %_M_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #2
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %0, i32* %2, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %4 = load i32*, i32** %__pos.addr, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store i32* %4, i32** %_M_finish3, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIPiEvRT_S2_(i32** nonnull align 8 dereferenceable(8) %__a, i32** nonnull align 8 dereferenceable(8) %__b) #4 comdat {
entry:
  %__a.addr = alloca i32**, align 8
  %__b.addr = alloca i32**, align 8
  %__tmp = alloca i32*, align 8
  store i32** %__a, i32*** %__a.addr, align 8
  store i32** %__b, i32*** %__b.addr, align 8
  %0 = load i32**, i32*** %__a.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** nonnull align 8 dereferenceable(8) %0) #2
  %1 = load i32*, i32** %call, align 8
  store i32* %1, i32** %__tmp, align 8
  %2 = load i32**, i32*** %__b.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** nonnull align 8 dereferenceable(8) %2) #2
  %3 = load i32*, i32** %call1, align 8
  %4 = load i32**, i32*** %__a.addr, align 8
  store i32* %3, i32** %4, align 8
  %call2 = call nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** nonnull align 8 dereferenceable(8) %__tmp) #2
  %5 = load i32*, i32** %call2, align 8
  %6 = load i32**, i32*** %__b.addr, align 8
  store i32* %5, i32** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** nonnull align 8 dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca i32**, align 8
  store i32** %__t, i32*** %__t.addr, align 8
  %0 = load i32**, i32*** %__t.addr, align 8
  ret i32** %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* %__first, i32* %__last, i32* nonnull align 4 dereferenceable(4) %__value) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32*, i32** %__first.addr, align 8
  %3 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp ne i32* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i32* %__it.coerce) #5 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive1, align 8
  %call = call i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEELb1EE7_S_baseES6_(i32* %2)
  ret i32* %call
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEELb1EE7_S_baseES6_(i32* %__it.coerce) #4 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__it) #2
  %0 = load i32*, i32** %call, align 8
  ret i32* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this, i32** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i32** %__i, i32*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 2
  %0 = load i64, i64* %_M_node_count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueIRKiEESt4pairISt17_Rb_tree_iteratorIiEbEOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, i32* nonnull align 4 dereferenceable(4) %__v) #5 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.3", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__v.addr = alloca i32*, align 8
  %__res = alloca %"struct.std::pair.5", align 8
  %ref.tmp = alloca %"struct.std::_Identity", align 1
  %__an = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", align 8
  %ref.tmp3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp7 = alloca i8, align 1
  %ref.tmp8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp10 = alloca i8, align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i32* %__v, i32** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load i32*, i32** %__v.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* nonnull align 1 dereferenceable(1) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %0)
  %call2 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, i32* nonnull align 4 dereferenceable(4) %call)
  %1 = bitcast %"struct.std::pair.5"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %2 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %1, i32 0, i32 0
  %3 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call2, 0
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %1, i32 0, i32 1
  %5 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call2, 1
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %second = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %__res, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeC2ERS5_(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %__an, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1)
  %first = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %__res, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %__res, i32 0, i32 1
  %8 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %9 = load i32*, i32** %__v.addr, align 8
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %9) #2
  %call6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"* %8, i32* nonnull align 4 dereferenceable(4) %call5, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %__an)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call6, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store i8 1, i8* %ref.tmp7, align 1
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2IS1_bvEEOT_OT0_(%"struct.std::pair.3"* nonnull align 8 dereferenceable(9) %retval, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp3, i8* nonnull align 1 dereferenceable(1) %ref.tmp7)
  br label %return

if.end:                                           ; preds = %entry
  %first9 = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node"*
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp8, %"struct.std::_Rb_tree_node_base"* %12) #2
  store i8 0, i8* %ref.tmp10, align 1
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2IS1_bvEEOT_OT0_(%"struct.std::pair.3"* nonnull align 8 dereferenceable(9) %retval, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp8, i8* nonnull align 1 dereferenceable(1) %ref.tmp10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %14 = load { %"struct.std::_Rb_tree_node_base"*, i8 }, { %"struct.std::_Rb_tree_node_base"*, i8 }* %13, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC2IRSt17_Rb_tree_iteratorIiERbvEEOT_OT0_(%"struct.std::pair"* nonnull align 8 dereferenceable(9) %this, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__x, i8* nonnull align 1 dereferenceable(1) %__y) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__y.addr = alloca i8*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  store i8* %__y, i8** %__y.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardIRSt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %0) #2
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* nonnull align 8 dereferenceable(8) %first, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %call) #2
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 1
  %1 = load i8*, i8** %__y.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE(i8* nonnull align 1 dereferenceable(1) %1) #2
  %2 = load i8, i8* %call2, align 1
  %tobool = trunc i8 %2 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %second, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, i32* nonnull align 4 dereferenceable(4) %__k) #5 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.5", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca i32*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp20 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i32* %__k, i32** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %__y, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %2 = load i32*, i32** %__k.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %3)
  %call4 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %_M_key_compare, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %4 = load i8, i8* %__comp, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %6) #2
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__j, %"struct.std::_Rb_tree_node_base"* %10) #2
  %11 = load i8, i8* %__comp, align 1
  %tobool7 = trunc i8 %11 to i1
  br i1 %tobool7, label %if.then, label %if.end12

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__j, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp) #2
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_(%"struct.std::pair.5"* nonnull align 8 dereferenceable(16) %retval, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__y)
  br label %return

if.else:                                          ; preds = %if.then
  %call11 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEmmEv(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__j) #2
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %while.end
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl13, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call15 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12)
  %13 = load i32*, i32** %__k.addr, align 8
  %call16 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %_M_key_compare14, i32* nonnull align 4 dereferenceable(4) %call15, i32* nonnull align 4 dereferenceable(4) %13)
  br i1 %call16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_(%"struct.std::pair.5"* nonnull align 8 dereferenceable(16) %retval, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__y)
  br label %return

if.end18:                                         ; preds = %if.end12
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.5"* nonnull align 8 dereferenceable(16) %retval, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %_M_node19, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %ref.tmp20)
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then10
  %14 = bitcast %"struct.std::pair.5"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %15 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %14, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* nonnull align 1 dereferenceable(1) %this, i32* nonnull align 4 dereferenceable(4) %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Identity"*, align 8
  %__x.addr = alloca i32*, align 8
  store %"struct.std::_Identity"* %this, %"struct.std::_Identity"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"struct.std::_Identity"*, %"struct.std::_Identity"** %this.addr, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeC2ERS5_(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %this, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %__t) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, align 8
  %__t.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %this.addr, align 8
  store %"class.std::_Rb_tree"* %__t, %"class.std::_Rb_tree"** %__t.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %__t.addr, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %_M_t, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, i32* nonnull align 4 dereferenceable(4) %__v, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %__node_gen) #5 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca i32*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, align 8
  %__insert_left = alloca i8, align 1
  %ref.tmp = alloca %"struct.std::_Identity", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store i32* %__v, i32** %__v.addr, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %2 = bitcast %"struct.std::_Rb_tree_node"* %call to %"struct.std::_Rb_tree_node_base"*
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %3 = load i32*, i32** %__v.addr, align 8
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* nonnull align 1 dereferenceable(1) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %3)
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %_M_key_compare, i32* nonnull align 4 dereferenceable(4) %call3, i32* nonnull align 4 dereferenceable(4) %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %__node_gen.addr, align 8
  %7 = load i32*, i32** %__v.addr, align 8
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %7) #2
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeclIRKiEEPSt13_Rb_tree_nodeIiEOT_(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %6, i32* nonnull align 4 dereferenceable(4) %call6)
  store %"struct.std::_Rb_tree_node"* %call7, %"struct.std::_Rb_tree_node"** %__z, align 8
  %8 = load i8, i8* %__insert_left, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl8, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"* nonnull align 8 dereferenceable(32) %_M_header) #2
  %_M_impl9 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl9, i32 0, i32 2
  %12 = load i64, i64* %_M_node_count, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %13 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %retval, %"struct.std::_Rb_tree_node_base"* %14) #2
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %__t) #4 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2IS1_bvEEOT_OT0_(%"struct.std::pair.3"* nonnull align 8 dereferenceable(9) %this, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__x, i8* nonnull align 1 dereferenceable(1) %__y) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.3"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__y.addr = alloca i8*, align 8
  store %"struct.std::pair.3"* %this, %"struct.std::pair.3"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  store i8* %__y, i8** %__y.addr, align 8
  %this1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %0) #2
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %first to i8*
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 1
  %3 = load i8*, i8** %__y.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* nonnull align 1 dereferenceable(1) %3) #2
  %4 = load i8, i8* %call2, align 1
  %tobool = trunc i8 %4 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %second, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %this, i32* nonnull align 4 dereferenceable(4) %__x, i32* nonnull align 4 dereferenceable(4) %__y) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca i32*, align 8
  %__y.addr = alloca i32*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store i32* %__y, i32** %__y.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__y.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %__x) #5 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %ref.tmp = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* nonnull align 1 dereferenceable(1) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %call)
  ret i32* %call1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %this, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %retval, %"struct.std::_Rb_tree_node_base"* %0) #2
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIiES7_vEEOT_OT0_(%"struct.std::pair.5"* nonnull align 8 dereferenceable(16) %this, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__y) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.5"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::pair.5"* %this, %"struct.std::pair.5"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__y, %"struct.std::_Rb_tree_node"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.5"*, %"struct.std::pair.5"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %0) #2
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %call, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %this1, i32 0, i32 1
  %3 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__y.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %3) #2
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %call2, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEmmEv(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #22
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* nonnull align 1 dereferenceable(1) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %call)
  ret i32* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.5"* nonnull align 8 dereferenceable(16) %this, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %__y) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.5"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.5"* %this, %"struct.std::pair.5"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.5"*, %"struct.std::pair.5"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %0) #2
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.5", %"struct.std::pair.5"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %__x) #5 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call i32* @_ZNKSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %0)
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNKSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call i32* @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %_M_storage) #2
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %call = call i8* @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this1) #2
  %0 = bitcast i8* %call to i32*
  ret i32* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull align 4 dereferenceable(4) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %this1, i32 0, i32 0
  %0 = bitcast [4 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIiEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %__t, %"struct.std::_Rb_tree_node"*** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_node"** %0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #16

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call i32* @_ZNKSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %1)
  ret i32* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %__t, %"struct.std::_Rb_tree_node_base"*** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_node_base"** %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_Alloc_nodeclIRKiEEPSt13_Rb_tree_nodeIiEOT_(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %this, i32* nonnull align 4 dereferenceable(4) %__arg) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, align 8
  %__arg.addr = alloca i32*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %this.addr, align 8
  store i32* %__arg, i32** %__arg.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %_M_t, align 8
  %1 = load i32*, i32** %__arg.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %1) #2
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIJRKiEEEPSt13_Rb_tree_nodeIiEDpOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %0, i32* nonnull align 4 dereferenceable(4) %call)
  ret %"struct.std::_Rb_tree_node"* %call2
}

; Function Attrs: nounwind
declare dso_local void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* nonnull align 8 dereferenceable(32)) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeIJRKiEEEPSt13_Rb_tree_nodeIiEDpOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, i32* nonnull align 4 dereferenceable(4) %__args) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__args.addr = alloca i32*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %1 = load i32*, i32** %__args.addr, align 8
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %1) #2
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_construct_nodeIJRKiEEEvPSt13_Rb_tree_nodeIiEDpOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %0, i32* nonnull align 4 dereferenceable(4) %call2)
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call, i64 1)
  ret %"struct.std::_Rb_tree_node"* %call2
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_construct_nodeIJRKiEEEvPSt13_Rb_tree_nodeIiEDpOT_(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this, %"struct.std::_Rb_tree_node"* %__node, i32* nonnull align 4 dereferenceable(4) %__args) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__node.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__args.addr = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::_Rb_tree_node"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1) #2
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %call2 = call i32* @_ZNSt13_Rb_tree_nodeIiE9_M_valptrEv(%"struct.std::_Rb_tree_node"* nonnull align 8 dereferenceable(36) %3)
  %4 = load i32*, i32** %__args.addr, align 8
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %4) #2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call, i32* %call2, i32* nonnull align 4 dereferenceable(4) %call3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %8 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %this1, %"struct.std::_Rb_tree_node"* %10) #2
  invoke void @__cxa_rethrow() #20
          to label %unreachable unwind label %lpad4

lpad4:                                            ; preds = %catch
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad4
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  ret void

eh.resume:                                        ; preds = %invoke.cont5
  %exn6 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn6, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad4
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, i64 %2, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, i64 %__n, i8* %0) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 40
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #21
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 461168601842738790
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, i32* %__p, i32* nonnull align 4 dereferenceable(4) %__args) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %3) #2
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, i32* %2, i32* nonnull align 4 dereferenceable(4) %call)
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, i32* %__p, i32* nonnull align 4 dereferenceable(4) %__args) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = bitcast i8* %1 to i32*
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %3) #2
  %4 = load i32, i32* %call, align 4
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardISt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %__t, %"struct.std::_Rb_tree_iterator"** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_iterator"* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* nonnull align 1 dereferenceable(1) %__t) #4 comdat {
entry:
  %__t.addr = alloca i8*, align 8
  store i8* %__t, i8** %__t.addr, align 8
  %0 = load i8*, i8** %__t.addr, align 8
  ret i8* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardIRSt17_Rb_tree_iteratorIiEEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %__t, %"struct.std::_Rb_tree_iterator"** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_iterator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* nonnull align 8 dereferenceable(8) %this, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %__it) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE(i8* nonnull align 1 dereferenceable(1) %__t) #4 comdat {
entry:
  %__t.addr = alloca i8*, align 8
  store i8* %__t, i8** %__t.addr, align 8
  %0 = load i8*, i8** %__t.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline uwtable
define internal void @__tls_init() #0 {
entry:
  %0 = load i8, i8* @__tls_guard, align 1
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init, label %exit, !prof !15

init:                                             ; preds = %entry
  store i8 1, i8* @__tls_guard, align 1
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  call void @__cxx_global_var_init.4()
  br label %exit

exit:                                             ; preds = %init, %entry
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr hidden i32* @_ZTW7df_size() #6 comdat {
  ret i32* @df_size
}

; Function Attrs: noinline uwtable
define weak_odr hidden i32* @_ZTW11all_df_size() #6 comdat {
  ret i32* @all_df_size
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = !{!"branch_weights", i32 1, i32 1023}
