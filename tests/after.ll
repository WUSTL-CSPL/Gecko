; ModuleID = 'after.bc'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.Bank = type { %"class.std::vector", i32, double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl" }
%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl" = type { %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data" }
%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data" = type { %class.BankAccount*, %class.BankAccount*, %class.BankAccount* }
%class.BankAccount = type { %"class.std::__cxx11::basic_string", double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %class.BankAccount* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.3" = type { %class.BankAccount* }
%"struct.std::integral_constant" = type { i8 }

$_ZN4BankC2Ev = comdat any

$_ZN4BankC2ERKS_ = comdat any

$_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd = comdat any

$_ZNK4Bank18displayAllAccountsEv = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EEixEm = comdat any

$_ZN11BankAccount7depositEd = comdat any

$_ZN11BankAccount8withdrawEd = comdat any

$_ZN4BankD2Ev = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI11BankAccountEC2Ev = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EEC2ERKS2_ = comdat any

$_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI11BankAccountES1_E17_S_select_on_copyERKS2_ = comdat any

$_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2EmRKS1_ = comdat any

$_ZNSaI11BankAccountED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E = comdat any

$_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv = comdat any

$_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE37select_on_container_copy_constructionERKS1_ = comdat any

$_ZNSaI11BankAccountEC2ERKS0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_ = comdat any

$_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZSt10_ConstructI11BankAccountJRKS0_EEvPT_DpOT0_ = comdat any

$_ZSt11__addressofI11BankAccountEPT_RS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZSt8_DestroyIP11BankAccountEvT_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZN11BankAccountC2ERKS_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_ = comdat any

$_ZSt8_DestroyI11BankAccountEvPT_ = comdat any

$_ZN11BankAccountD2Ev = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m = comdat any

$_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E = comdat any

$_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP11BankAccountET_S2_ = comdat any

$_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZN11BankAccountC2EOS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_ = comdat any

$_ZNK11BankAccount7displayEv = comdat any

$_ZNSt6vectorI11BankAccountSaIS0_EED2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@ggbol = dso_local global i32 9, align 4
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"dssd \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"John Doe\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Jane Smith\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Bob Johnson\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Bank Accounts:\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AUpdated Bank Accounts:\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Account Owner: \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Account Balance: $\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Insufficient funds!\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".Code_region_1" {
entry:
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  call void @cspl_intra_cpt_transfer()
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1 section ".Code_region_1"

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #2 section ".Code_region_0"

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3 section ".Code_region_1"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4Afunv() #4 section ".Code_region_1" {
entry:
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4Bfunv() #5 section ".Code_region_0" {
entry:
  call void @cspl_intra_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1 section ".Code_region_0"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main() #6 section ".Code_region_1" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %bank = alloca %class.Bank, align 8
  %bddp = alloca %class.Bank*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %vffd = alloca %class.Bank, align 8
  %abc = alloca i32*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp5 = alloca %"class.std::allocator.0", align 1
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp11 = alloca %"class.std::allocator.0", align 1
  %ref.tmp18 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp19 = alloca %"class.std::allocator.0", align 1
  %funptr = alloca void ()*, align 8
  call void @cspl_data_intra()
  store i32 0, i32* %retval, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %bank) #3
  call void @cspl_intra_cpt_transfer()
  %call = invoke noalias nonnull i8* @_Znwm(i64 40) #15
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call to %class.Bank*
  call void @cspl_inter_cpt_transfer()
  call void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %0) #3
  call void @cspl_data_intra()
  store %class.Bank* %0, %class.Bank** %bddp, align 8
  call void @cspl_data_intra()
  %1 = load %class.Bank*, %class.Bank** %bddp, align 8
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZN4BankC2ERKS_(%class.Bank* nonnull align 8 dereferenceable(40) %vffd, %class.Bank* nonnull align 8 dereferenceable(40) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  call void @cspl_intra_cpt_transfer()
  %call4 = invoke noalias nonnull i8* @_Znwm(i64 4) #15
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont1
  %2 = bitcast i8* %call4 to i32*
  call void @cspl_data_other()
  store i32 113, i32* %2, align 4
  %bitcast = bitcast i32* %2 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 4, i32 1, i32 0)
  call void @cspl_data_intra()
  store i32* %2, i32** %abc, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp5) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp5)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont3
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %bank, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp, double 5.000000e+03)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont7
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp) #3
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp5) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp11) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp11)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont9
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %bank, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10, double 7.500000e+03)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont13
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10) #3
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp11) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp19) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp19)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %invoke.cont15
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %bank, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp18, double 3.000000e+03)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %invoke.cont21
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp18) #3
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp19) #3
  call void @cspl_inter_cpt_transfer()
  %call27 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
          to label %invoke.cont26 unwind label %lpad2

invoke.cont26:                                    ; preds = %invoke.cont23
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %bank)
          to label %invoke.cont28 unwind label %lpad2

invoke.cont28:                                    ; preds = %invoke.cont26
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %bank, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  %call29 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts, i64 0) #3
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZN11BankAccount7depositEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %call29, double 1.000000e+03)
          to label %invoke.cont30 unwind label %lpad2

invoke.cont30:                                    ; preds = %invoke.cont28
  %accounts31 = getelementptr inbounds %class.Bank, %class.Bank* %bank, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  %call32 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts31, i64 1) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZN11BankAccount8withdrawEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %call32, double 2.000000e+03)
          to label %invoke.cont33 unwind label %lpad2

invoke.cont33:                                    ; preds = %invoke.cont30
  call void @cspl_data_global()
  %3 = load i32, i32* @ggbol, align 4
  call void @cspl_data_log(i8* bitcast (i32* @ggbol to i8*), i32 4, i32 0, i32 0)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont33
  call void @cspl_data_intra()
  store void ()* @_Z4Afunv, void ()** %funptr, align 8
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @cspl_data_intra()
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  call void @cspl_data_intra()
  store i32 %6, i32* %ehselector.slot, align 4
  br label %ehcleanup43

lpad2:                                            ; preds = %invoke.cont39, %invoke.cont37, %invoke.cont35, %invoke.cont34, %if.end, %invoke.cont30, %invoke.cont28, %invoke.cont26, %invoke.cont23, %invoke.cont1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @cspl_data_intra()
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  call void @cspl_data_intra()
  store i32 %9, i32* %ehselector.slot, align 4
  br label %ehcleanup42

lpad6:                                            ; preds = %invoke.cont3
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @cspl_data_intra()
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  call void @cspl_data_intra()
  store i32 %12, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont7
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @cspl_data_intra()
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  call void @cspl_data_intra()
  store i32 %15, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad6
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp5) #3
  br label %ehcleanup42

lpad12:                                           ; preds = %invoke.cont9
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @cspl_data_intra()
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  call void @cspl_data_intra()
  store i32 %18, i32* %ehselector.slot, align 4
  br label %ehcleanup17

lpad14:                                           ; preds = %invoke.cont13
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @cspl_data_intra()
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  call void @cspl_data_intra()
  store i32 %21, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10) #3
  br label %ehcleanup17

ehcleanup17:                                      ; preds = %lpad14, %lpad12
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp11) #3
  br label %ehcleanup42

lpad20:                                           ; preds = %invoke.cont15
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  call void @cspl_data_intra()
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  call void @cspl_data_intra()
  store i32 %24, i32* %ehselector.slot, align 4
  br label %ehcleanup25

lpad22:                                           ; preds = %invoke.cont21
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @cspl_data_intra()
  store i8* %26, i8** %exn.slot, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  call void @cspl_data_intra()
  store i32 %27, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp18) #3
  br label %ehcleanup25

ehcleanup25:                                      ; preds = %lpad22, %lpad20
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp19) #3
  br label %ehcleanup42

if.else:                                          ; preds = %invoke.cont33
  call void @cspl_data_intra()
  store void ()* @_Z4Bfunv, void ()** %funptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @cspl_data_intra()
  %28 = load void ()*, void ()** %funptr, align 8
  call void @cspl_inter_ind_call()
  invoke void %28()
          to label %invoke.cont34 unwind label %lpad2

invoke.cont34:                                    ; preds = %if.end
  call void @cspl_inter_cpt_transfer()
  %call36 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
          to label %invoke.cont35 unwind label %lpad2

invoke.cont35:                                    ; preds = %invoke.cont34
  call void @cspl_data_intra()
  %29 = load i32*, i32** %abc, align 8
  call void @cspl_data_other()
  %30 = load i32, i32* %29, align 4
  %bitcast1 = bitcast i32* %29 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 4, i32 0, i32 1)
  call void @cspl_intra_cpt_transfer()
  %call38 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call36, i32 %30)
          to label %invoke.cont37 unwind label %lpad2

invoke.cont37:                                    ; preds = %invoke.cont35
  call void @cspl_data_global()
  %31 = load i32, i32* @ggbol, align 4
  call void @cspl_data_log(i8* bitcast (i32* @ggbol to i8*), i32 4, i32 0, i32 2)
  call void @cspl_intra_cpt_transfer()
  %call40 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i32 %31)
          to label %invoke.cont39 unwind label %lpad2

invoke.cont39:                                    ; preds = %invoke.cont37
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %bank)
          to label %invoke.cont41 unwind label %lpad2

invoke.cont41:                                    ; preds = %invoke.cont39
  call void @cspl_data_intra()
  store i32 0, i32* %retval, align 4
  call void @cspl_intra_cpt_transfer()
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %vffd) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %bank) #3
  call void @cspl_data_intra()
  %32 = load i32, i32* %retval, align 4
  ret i32 %32

ehcleanup42:                                      ; preds = %ehcleanup25, %ehcleanup17, %ehcleanup, %lpad2
  call void @cspl_intra_cpt_transfer()
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %vffd) #3
  br label %ehcleanup43

ehcleanup43:                                      ; preds = %ehcleanup42, %lpad
  call void @cspl_intra_cpt_transfer()
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %bank) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup43
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val44
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.Bank*, align 8
  call void @cspl_data_intra()
  store %class.Bank* %this, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.Bank*, %class.Bank** %this.addr, align 8
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts) #3
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #8 section ".Code_region_1"

declare dso_local i32 @__gxx_personality_v0(...) section ".Code_region_1"

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4BankC2ERKS_(%class.Bank* nonnull align 8 dereferenceable(40) %this, %class.Bank* nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.Bank*, align 8
  %.addr = alloca %class.Bank*, align 8
  call void @cspl_data_intra()
  store %class.Bank* %this, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.Bank* %0, %class.Bank** %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.Bank*, %class.Bank** %this.addr, align 8
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %1 = load %class.Bank*, %class.Bank** %.addr, align 8
  %accounts2 = getelementptr inbounds %class.Bank, %class.Bank* %1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt6vectorI11BankAccountSaIS0_EEC2ERKS2_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts, %"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts2)
  %hh = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 1
  call void @cspl_data_intra()
  %2 = load %class.Bank*, %class.Bank** %.addr, align 8
  %hh3 = getelementptr inbounds %class.Bank, %class.Bank* %2, i32 0, i32 1
  %3 = bitcast i32* %hh to i8*
  %4 = bitcast i32* %hh3 to i8*
  call void @cspl_inter_cpt_transfer()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %owner, double %initialBalance) #5 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Bank*, align 8
  %owner.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %initialBalance.addr = alloca double, align 8
  %newAccount = alloca %class.BankAccount, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @cspl_data_intra()
  store %class.Bank* %this, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::__cxx11::basic_string"* %owner, %"class.std::__cxx11::basic_string"** %owner.addr, align 8
  call void @cspl_data_intra()
  store double %initialBalance, double* %initialBalance.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.Bank*, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %owner.addr, align 8
  call void @cspl_data_intra()
  %1 = load double, double* %initialBalance.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %newAccount, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0, double %1)
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts, %class.BankAccount* nonnull align 8 dereferenceable(40) %newAccount)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @cspl_inter_cpt_transfer()
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %newAccount) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @cspl_data_intra()
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  call void @cspl_data_intra()
  store i32 %4, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %newAccount) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2 section ".Code_region_1"

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #1 section ".Code_region_0"

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2 section ".Code_region_0"

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2 section ".Code_region_0"

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %this) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %class.Bank*, align 8
  %__range1 = alloca %"class.std::vector"*, align 8
  %__begin1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %account = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.Bank* %this, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.Bank*, %class.Bank** %this.addr, align 8
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  store %"class.std::vector"* %accounts, %"class.std::vector"** %__range1, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin1, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call, %class.BankAccount** %coerce.dive, align 8
  call void @cspl_data_intra()
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8
  call void @cspl_inter_cpt_transfer()
  %call2 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %1) #3
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end1, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call2, %class.BankAccount** %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @cspl_inter_cpt_transfer()
  %call4 = call zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin1, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__end1) #3
  br i1 %call4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @cspl_inter_cpt_transfer()
  %call5 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin1) #3
  call void @cspl_data_intra()
  store %class.BankAccount* %call5, %class.BankAccount** %account, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %account, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZNK11BankAccount7displayEv(%class.BankAccount* nonnull align 8 dereferenceable(40) %2)
  call void @cspl_intra_cpt_transfer()
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @cspl_inter_cpt_transfer()
  %call7 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin1) #3
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_data_inter()
  %2 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 3)
  call void @cspl_data_intra()
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %2, i64 %3
  ret %class.BankAccount* %add.ptr
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccount7depositEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %this, double %amount) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  %amount.addr = alloca double, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  store double %amount, double* %amount.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load double, double* %amount.addr, align 8
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_other()
  %1 = load double, double* %balance, align 8
  %bitcast = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 4)
  %add = fadd double %1, %0
  call void @cspl_data_other()
  store double %add, double* %balance, align 8
  %bitcast1 = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccount8withdrawEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %this, double %amount) #5 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  %amount.addr = alloca double, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  store double %amount, double* %amount.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_other()
  %0 = load double, double* %balance, align 8
  %bitcast = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 5)
  call void @cspl_data_intra()
  %1 = load double, double* %amount.addr, align 8
  %cmp = fcmp oge double %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @cspl_data_intra()
  %2 = load double, double* %amount.addr, align 8
  call void @cspl_data_global()
  %3 = load i32, i32* @ggbol, align 4
  call void @cspl_data_log(i8* bitcast (i32* @ggbol to i8*), i32 4, i32 0, i32 6)
  %conv = sitofp i32 %3 to double
  %add = fadd double %2, %conv
  %balance2 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_other()
  %4 = load double, double* %balance2, align 8
  %bitcast1 = bitcast double* %balance2 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 7)
  %sub = fsub double %4, %add
  call void @cspl_data_other()
  store double %sub, double* %balance2, align 8
  %bitcast2 = bitcast double* %balance2 to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 1, i32 2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @cspl_intra_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  call void @cspl_inter_cpt_transfer()
  %call3 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #1 section ".Code_region_1"

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %class.Bank*, align 8
  call void @cspl_data_intra()
  store %class.Bank* %this, %class.Bank** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.Bank*, %class.Bank** %this.addr, align 8
  %accounts = getelementptr inbounds %class.Bank, %class.Bank* %this1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt6vectorI11BankAccountSaIS0_EED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %accounts) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaI11BankAccountEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #3
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %this1, i32 0, i32 0
  call void @cspl_data_other()
  call void @cspl_data_inter()
  store %class.BankAccount* null, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 1, i32 3)
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %this1, i32 0, i32 1
  call void @cspl_data_other()
  call void @cspl_data_inter()
  store %class.BankAccount* null, %class.BankAccount** %_M_finish, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 4)
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %this1, i32 0, i32 2
  call void @cspl_data_other()
  call void @cspl_data_inter()
  store %class.BankAccount* null, %class.BankAccount** %_M_end_of_storage, align 8
  %bitcast2 = bitcast %class.BankAccount** %_M_end_of_storage to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 1, i32 5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EEC2ERKS2_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #9 section ".Code_region_0" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_data_intra()
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %1) #3
  call void @cspl_data_intra()
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @cspl_intra_cpt_transfer()
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI11BankAccountES1_E17_S_select_on_copyERKS2_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %ref.tmp, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call2)
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2EmRKS1_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, i64 %call, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #3
  call void @cspl_data_intra()
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call3 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %4) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call3, %class.BankAccount** %coerce.dive, align 8
  call void @cspl_data_intra()
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call5 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %5) #3
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call5, %class.BankAccount** %coerce.dive6, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @cspl_data_inter()
  %8 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_intra_cpt_transfer()
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %9) #3
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  %10 = load %class.BankAccount*, %class.BankAccount** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  call void @cspl_data_intra()
  %11 = load %class.BankAccount*, %class.BankAccount** %coerce.dive9, align 8
  call void @cspl_inter_cpt_transfer()
  %call12 = invoke %class.BankAccount* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(%class.BankAccount* %10, %class.BankAccount* %11, %class.BankAccount* %8, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl13 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %13, i32 0, i32 1
  call void @cspl_data_inter()
  store %class.BankAccount* %call12, %class.BankAccount** %_M_finish, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 6)
  ret void

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @cspl_data_intra()
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  call void @cspl_data_intra()
  store i32 %16, i32* %ehselector.slot, align 4
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #3
  br label %eh.resume

lpad10:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @cspl_data_intra()
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  call void @cspl_data_intra()
  store i32 %19, i32* %ehselector.slot, align 4
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %20) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad10, %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10 section ".Code_region_1"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @cspl_data_other()
  call void @cspl_data_inter()
  %2 = load %class.BankAccount*, %class.BankAccount** %_M_finish, align 8
  %bitcast = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 9)
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 0
  call void @cspl_data_other()
  call void @cspl_data_inter()
  %5 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 10)
  %sub.ptr.lhs.cast = ptrtoint %class.BankAccount* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BankAccount* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaI11BankAccountES1_E17_S_select_on_copyERKS2_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %agg.result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) #5 section ".Code_region_0" comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  call void @cspl_data_intra()
  store i8* %0, i8** %result.ptr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE37select_on_container_copy_constructionERKS1_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %agg.result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2EmRKS1_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #9 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2ERKS1_(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #3
  call void @cspl_data_intra()
  %1 = load i64, i64* %__n.addr, align 8
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @cspl_data_intra()
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  call void @cspl_data_intra()
  store i32 %4, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(%class.BankAccount* %__first.coerce, %class.BankAccount* %__last.coerce, %class.BankAccount* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #5 section ".Code_region_1" comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__first.coerce, %class.BankAccount** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__last.coerce, %class.BankAccount** %coerce.dive1, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @cspl_intra_cpt_transfer()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @cspl_intra_cpt_transfer()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  call void @cspl_data_intra()
  %5 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  %6 = load %class.BankAccount*, %class.BankAccount** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  call void @cspl_data_intra()
  %7 = load %class.BankAccount*, %class.BankAccount** %coerce.dive4, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(%class.BankAccount* %6, %class.BankAccount* %7, %class.BankAccount* %5)
  ret %class.BankAccount* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %retval, %class.BankAccount** nonnull align 8 dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %coerce.dive, align 8
  ret %class.BankAccount* %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %retval, %class.BankAccount** nonnull align 8 dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %coerce.dive, align 8
  ret %class.BankAccount* %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %0, i32 0, i32 0
  call void @cspl_data_inter()
  %1 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 11)
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %2, i32 0, i32 2
  call void @cspl_data_inter()
  %3 = load %class.BankAccount*, %class.BankAccount** %_M_end_of_storage, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_end_of_storage to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 12)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 0
  call void @cspl_data_inter()
  %5 = load %class.BankAccount*, %class.BankAccount** %_M_start4, align 8
  %bitcast2 = bitcast %class.BankAccount** %_M_start4 to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 0, i32 13)
  %sub.ptr.lhs.cast = ptrtoint %class.BankAccount* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BankAccount* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, %class.BankAccount* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @cspl_data_intra()
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  call void @cspl_data_intra()
  store i32 %8, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_inter_cpt_transfer()
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE37select_on_container_copy_constructionERKS1_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %agg.result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__rhs) #4 section ".Code_region_1" comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  call void @cspl_data_intra()
  store i8* %0, i8** %result.ptr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__rhs, %"class.std::allocator"** %__rhs.addr, align 8
  call void @cspl_data_intra()
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__rhs.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %agg.result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %this, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2ERKS1_(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @cspl_data_intra()
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #3
  %2 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %2) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load i64, i64* %__n.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_data_inter()
  store %class.BankAccount* %call, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 1, i32 7)
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %2, i32 0, i32 0
  call void @cspl_data_inter()
  %3 = load %class.BankAccount*, %class.BankAccount** %_M_start3, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_start3 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 14)
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 1
  call void @cspl_data_inter()
  store %class.BankAccount* %3, %class.BankAccount** %_M_finish, align 8
  %bitcast2 = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 1, i32 8)
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl5 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %5, i32 0, i32 0
  call void @cspl_data_inter()
  %6 = load %class.BankAccount*, %class.BankAccount** %_M_start6, align 8
  %bitcast3 = bitcast %class.BankAccount** %_M_start6 to i8*
  call void @cspl_data_log(i8* %bitcast3, i32 8, i32 0, i32 15)
  call void @cspl_data_intra()
  %7 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %6, i64 %7
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl7 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %8, i32 0, i32 2
  call void @cspl_data_inter()
  store %class.BankAccount* %add.ptr, %class.BankAccount** %_M_end_of_storage, align 8
  %bitcast4 = bitcast %class.BankAccount** %_M_end_of_storage to i8*
  call void @cspl_data_log(i8* %bitcast4, i32 8, i32 1, i32 9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, i64 %__n) #5 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  call void @cspl_data_intra()
  %2 = load i64, i64* %__n.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %class.BankAccount* [ %call, %cond.true ], [ null, %cond.false ]
  ret %class.BankAccount* %cond
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 section ".Code_region_0" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %2 = load i64, i64* %__n.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, i64 %2, i8* null)
  ret %class.BankAccount* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, i64 %__n, i8* %0) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  store i8* %0, i8** %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %1 = load i64, i64* %__n.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cspl_inter_cpt_transfer()
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  call void @cspl_data_intra()
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 40
  call void @cspl_intra_cpt_transfer()
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #18
  %3 = bitcast i8* %call2 to %class.BankAccount*
  ret %class.BankAccount* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 230584300921369395
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11 section ".Code_region_0"

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(%class.BankAccount* %__first.coerce, %class.BankAccount* %__last.coerce, %class.BankAccount* %__result) #5 section ".Code_region_1" comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__first.coerce, %class.BankAccount** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__last.coerce, %class.BankAccount** %coerce.dive1, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @cspl_intra_cpt_transfer()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @cspl_intra_cpt_transfer()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  call void @cspl_data_intra()
  %4 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  %5 = load %class.BankAccount*, %class.BankAccount** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  call void @cspl_data_intra()
  %6 = load %class.BankAccount*, %class.BankAccount** %coerce.dive4, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(%class.BankAccount* %5, %class.BankAccount* %6, %class.BankAccount* %4)
  ret %class.BankAccount* %call
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(%class.BankAccount* %__first.coerce, %class.BankAccount* %__last.coerce, %class.BankAccount* %__result) #5 section ".Code_region_0" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__cur = alloca %class.BankAccount*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__first.coerce, %class.BankAccount** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__last.coerce, %class.BankAccount** %coerce.dive1, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %0, %class.BankAccount** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @cspl_intra_cpt_transfer()
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__last) #3
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  call void @cspl_intra_cpt_transfer()
  %call2 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %1) #3
  call void @cspl_intra_cpt_transfer()
  %call3 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__first) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZSt10_ConstructI11BankAccountJRKS0_EEvPT_DpOT0_(%class.BankAccount* %call2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  call void @cspl_intra_cpt_transfer()
  %call4 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__first) #3
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %2, i32 1
  call void @cspl_data_intra()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %__cur, align 8
  br label %for.cond, !llvm.loop !4

lpad:                                             ; preds = %for.body
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @cspl_data_intra()
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  call void @cspl_data_intra()
  store i32 %5, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_intra_cpt_transfer()
  %6 = call i8* @__cxa_begin_catch(i8* %exn) #3
  call void @cspl_data_intra()
  %7 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  %8 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %7, %class.BankAccount* %8)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %catch
  call void @cspl_intra_cpt_transfer()
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad5

for.end:                                          ; preds = %for.cond
  call void @cspl_data_intra()
  %9 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  ret %class.BankAccount* %9

lpad5:                                            ; preds = %invoke.cont6, %catch
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @cspl_data_intra()
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  call void @cspl_data_intra()
  store i32 %12, i32* %ehselector.slot, align 4
  call void @cspl_inter_cpt_transfer()
  invoke void @__cxa_end_catch()
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %lpad5
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @cspl_intra_cpt_transfer()
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont7
  call void @cspl_data_intra()
  %exn8 = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn8, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9

terminate.lpad:                                   ; preds = %lpad5
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @cspl_intra_cpt_transfer()
  call void @__clang_call_terminate(i8* %14) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 section ".Code_region_0" comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0) #3
  call void @cspl_data_inter()
  %1 = load %class.BankAccount*, %class.BankAccount** %call, align 8
  %bitcast = bitcast %class.BankAccount** %call to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 16)
  call void @cspl_data_intra()
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call1 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %2) #3
  call void @cspl_data_inter()
  %3 = load %class.BankAccount*, %class.BankAccount** %call1, align 8
  %bitcast1 = bitcast %class.BankAccount** %call1 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 17)
  %cmp = icmp ne %class.BankAccount* %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI11BankAccountJRKS0_EEvPT_DpOT0_(%class.BankAccount* %__p, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #5 section ".Code_region_1" comdat {
entry:
  %__p.addr = alloca %class.BankAccount*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  %1 = bitcast %class.BankAccount* %0 to i8*
  %2 = bitcast i8* %1 to %class.BankAccount*
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_inter_cpt_transfer()
  call void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %__r) #4 section ".Code_region_0" comdat {
entry:
  %__r.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__r, %class.BankAccount** %__r.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__r.addr, align 8
  ret %class.BankAccount* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  call void @cspl_data_inter()
  %0 = load %class.BankAccount*, %class.BankAccount** %_M_current, align 8
  %bitcast = bitcast %class.BankAccount** %_M_current to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 18)
  ret %class.BankAccount* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  call void @cspl_data_inter()
  %0 = load %class.BankAccount*, %class.BankAccount** %_M_current, align 8
  %bitcast = bitcast %class.BankAccount** %_M_current to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 19)
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %0, i32 1
  call void @cspl_data_inter()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %_M_current, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_current to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 10)
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

declare dso_local i8* @__cxa_begin_catch(i8*) section ".Code_region_0"

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %__first, %class.BankAccount* %__last) #5 section ".Code_region_1" comdat {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_(%class.BankAccount* %0, %class.BankAccount* %1)
  ret void
}

declare dso_local void @__cxa_rethrow() section ".Code_region_0"

declare dso_local void @__cxa_end_catch() section ".Code_region_1"

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 section ".Code_region_0" comdat {
  call void @cspl_intra_cpt_transfer()
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local void @_ZSt9terminatev() section ".Code_region_0"

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #13 section ".Code_region_0"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %class.BankAccount** %_M_current
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %__t) #4 section ".Code_region_1" comdat {
entry:
  %__t.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__t, %class.BankAccount** %__t.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__t.addr, align 8
  ret %class.BankAccount* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %this, %class.BankAccount* nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  %.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %0, %class.BankAccount** %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  %ownerName = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %.addr, align 8
  %ownerName2 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName2)
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %.addr, align 8
  %balance3 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %2, i32 0, i32 1
  call void @cspl_data_other()
  call void @cspl_data_inter()
  %3 = load double, double* %balance3, align 8
  %bitcast = bitcast double* %balance3 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 20)
  call void @cspl_data_other()
  store double %3, double* %balance, align 8
  %bitcast1 = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 11)
  ret void
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #1 section ".Code_region_1"

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_(%class.BankAccount* %__first, %class.BankAccount* %__last) #5 section ".Code_region_0" comdat align 2 {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  %cmp = icmp ne %class.BankAccount* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %2) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZSt8_DestroyI11BankAccountEvPT_(%class.BankAccount* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %3, i32 1
  call void @cspl_data_intra()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %__first.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI11BankAccountEvPT_(%class.BankAccount* %__pointer) #4 section ".Code_region_0" comdat {
entry:
  %__pointer.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__pointer, %class.BankAccount** %__pointer.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__pointer.addr, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %this) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  %ownerName = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %this, %class.BankAccount** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #7 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %class.BankAccount**, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount** %__i, %class.BankAccount*** %__i.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %0 = load %class.BankAccount**, %class.BankAccount*** %__i.addr, align 8
  call void @cspl_data_other()
  call void @cspl_data_inter()
  %1 = load %class.BankAccount*, %class.BankAccount** %0, align 8
  %bitcast = bitcast %class.BankAccount** %0 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 21)
  call void @cspl_data_inter()
  store %class.BankAccount* %1, %class.BankAccount** %_M_current, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_current to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 12)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %this, %class.BankAccount* %__p, i64 %__n) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  %tobool = icmp ne %class.BankAccount* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %3 = load i64, i64* %__n.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, %class.BankAccount* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, %class.BankAccount* %__p, i64 %__n) #5 section ".Code_region_0" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__n.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %3 = load i64, i64* %__n.addr, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, %class.BankAccount* %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %class.BankAccount* %__p, i64 %0) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %.addr = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store i64 %0, i64* %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  %2 = bitcast %class.BankAccount* %1 to i8*
  call void @cspl_intra_cpt_transfer()
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #14 section ".Code_region_0"

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %owner, double %initialBalance) unnamed_addr #9 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  %owner.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %initialBalance.addr = alloca double, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::__cxx11::basic_string"* %owner, %"class.std::__cxx11::basic_string"** %owner.addr, align 8
  call void @cspl_data_intra()
  store double %initialBalance, double* %initialBalance.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  %ownerName = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %owner.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_intra()
  %1 = load double, double* %initialBalance.addr, align 8
  call void @cspl_data_inter()
  store double %1, double* %balance, align 8
  %bitcast = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 1, i32 13)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, %class.BankAccount* nonnull align 8 dereferenceable(40) %__x) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %class.BankAccount*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__x, %class.BankAccount** %__x.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @cspl_data_inter()
  %2 = load %class.BankAccount*, %class.BankAccount** %_M_finish, align 8
  %bitcast = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 22)
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 2
  call void @cspl_data_inter()
  %5 = load %class.BankAccount*, %class.BankAccount** %_M_end_of_storage, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_end_of_storage to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 23)
  %cmp = icmp ne %class.BankAccount* %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %9, i32 0, i32 1
  call void @cspl_data_inter()
  %10 = load %class.BankAccount*, %class.BankAccount** %_M_finish5, align 8
  %bitcast2 = bitcast %class.BankAccount** %_M_finish5 to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 0, i32 24)
  call void @cspl_data_intra()
  %11 = load %class.BankAccount*, %class.BankAccount** %__x.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7, %class.BankAccount* %10, %class.BankAccount* nonnull align 8 dereferenceable(40) %11)
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %13, i32 0, i32 1
  call void @cspl_data_inter()
  %14 = load %class.BankAccount*, %class.BankAccount** %_M_finish7, align 8
  %bitcast3 = bitcast %class.BankAccount** %_M_finish7 to i8*
  call void @cspl_data_log(i8* %bitcast3, i32 8, i32 0, i32 25)
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %14, i32 1
  call void @cspl_data_inter()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %_M_finish7, align 8
  %bitcast4 = bitcast %class.BankAccount** %_M_finish7 to i8*
  call void @cspl_data_log(i8* %bitcast4, i32 8, i32 1, i32 14)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call, %class.BankAccount** %coerce.dive, align 8
  call void @cspl_data_intra()
  %15 = load %class.BankAccount*, %class.BankAccount** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  %16 = load %class.BankAccount*, %class.BankAccount** %coerce.dive8, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1, %class.BankAccount* %16, %class.BankAccount* nonnull align 8 dereferenceable(40) %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, %class.BankAccount* %__p, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #5 section ".Code_region_0" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, %class.BankAccount* %2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, %class.BankAccount* %__position.coerce, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #5 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca %class.BankAccount*, align 8
  %__old_finish = alloca %class.BankAccount*, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__new_start = alloca %class.BankAccount*, align 8
  %__new_finish = alloca %class.BankAccount*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__position, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %__position.coerce, %class.BankAccount** %coerce.dive, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  call void @cspl_data_intra()
  store i64 %call, i64* %__len, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_data_inter()
  %2 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 26)
  call void @cspl_data_intra()
  store %class.BankAccount* %2, %class.BankAccount** %__old_start, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 1
  call void @cspl_data_inter()
  %5 = load %class.BankAccount*, %class.BankAccount** %_M_finish, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 27)
  call void @cspl_data_intra()
  store %class.BankAccount* %5, %class.BankAccount** %__old_finish, align 8
  call void @cspl_intra_cpt_transfer()
  %call3 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %ref.tmp, i32 0, i32 0
  call void @cspl_data_intra()
  store %class.BankAccount* %call3, %class.BankAccount** %coerce.dive4, align 8
  call void @cspl_intra_cpt_transfer()
  %call5 = call i64 @_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %ref.tmp) #3
  call void @cspl_data_intra()
  store i64 %call5, i64* %__elems_before, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_data_intra()
  %7 = load i64, i64* %__len, align 8
  call void @cspl_inter_cpt_transfer()
  %call6 = call %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %6, i64 %7)
  call void @cspl_data_intra()
  store %class.BankAccount* %call6, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %8 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %8, %class.BankAccount** %__new_finish, align 8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl7 to %"class.std::allocator"*
  call void @cspl_data_intra()
  %11 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %12 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %11, i64 %12
  call void @cspl_data_intra()
  %13 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call8 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %13) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %10, %class.BankAccount* %add.ptr, %class.BankAccount* nonnull align 8 dereferenceable(40) %call8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @cspl_data_intra()
  store %class.BankAccount* null, %class.BankAccount** %__new_finish, align 8
  call void @cspl_data_intra()
  %14 = load %class.BankAccount*, %class.BankAccount** %__old_start, align 8
  call void @cspl_inter_cpt_transfer()
  %call9 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %__position) #3
  call void @cspl_data_intra()
  %15 = load %class.BankAccount*, %class.BankAccount** %call9, align 8
  call void @cspl_data_intra()
  %16 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  %call10 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %17) #3
  call void @cspl_intra_cpt_transfer()
  %call11 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %14, %class.BankAccount* %15, %class.BankAccount* %16, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call10) #3
  call void @cspl_data_intra()
  store %class.BankAccount* %call11, %class.BankAccount** %__new_finish, align 8
  call void @cspl_data_intra()
  %18 = load %class.BankAccount*, %class.BankAccount** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %18, i32 1
  call void @cspl_data_intra()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %__new_finish, align 8
  call void @cspl_inter_cpt_transfer()
  %call12 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %__position) #3
  call void @cspl_data_intra()
  %19 = load %class.BankAccount*, %class.BankAccount** %call12, align 8
  call void @cspl_data_intra()
  %20 = load %class.BankAccount*, %class.BankAccount** %__old_finish, align 8
  call void @cspl_data_intra()
  %21 = load %class.BankAccount*, %class.BankAccount** %__new_finish, align 8
  %22 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  %call13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %22) #3
  call void @cspl_intra_cpt_transfer()
  %call14 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %19, %class.BankAccount* %20, %class.BankAccount* %21, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call13) #3
  call void @cspl_data_intra()
  store %class.BankAccount* %call14, %class.BankAccount** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  call void @cspl_data_intra()
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  call void @cspl_data_intra()
  store i32 %25, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_inter_cpt_transfer()
  %26 = call i8* @__cxa_begin_catch(i8* %exn) #3
  call void @cspl_data_intra()
  %27 = load %class.BankAccount*, %class.BankAccount** %__new_finish, align 8
  %tobool = icmp ne %class.BankAccount* %27, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %28 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %29 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl15 to %"class.std::allocator"*
  call void @cspl_data_intra()
  %30 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %31 = load i64, i64* %__elems_before, align 8
  %add.ptr16 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %30, i64 %31
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %29, %class.BankAccount* %add.ptr16) #3
  br label %if.end

if.else:                                          ; preds = %catch
  call void @cspl_data_intra()
  %32 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %33 = load %class.BankAccount*, %class.BankAccount** %__new_finish, align 8
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  %call17 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %34) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %32, %class.BankAccount* %33, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %if.else
  br label %if.end

lpad18:                                           ; preds = %invoke.cont20, %if.end, %if.else
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  call void @cspl_data_intra()
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  call void @cspl_data_intra()
  store i32 %37, i32* %ehselector.slot, align 4
  call void @cspl_intra_cpt_transfer()
  invoke void @__cxa_end_catch()
          to label %invoke.cont21 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont19, %if.then
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_data_intra()
  %39 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %40 = load i64, i64* %__len, align 8
  call void @cspl_intra_cpt_transfer()
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %38, %class.BankAccount* %39, i64 %40)
          to label %invoke.cont20 unwind label %lpad18

invoke.cont20:                                    ; preds = %if.end
  call void @cspl_inter_cpt_transfer()
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad18

invoke.cont21:                                    ; preds = %lpad18
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_data_intra()
  %42 = load %class.BankAccount*, %class.BankAccount** %__old_start, align 8
  %43 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl22 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %43, i32 0, i32 0
  %44 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl22 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %44, i32 0, i32 2
  call void @cspl_data_inter()
  %45 = load %class.BankAccount*, %class.BankAccount** %_M_end_of_storage, align 8
  %bitcast2 = bitcast %class.BankAccount** %_M_end_of_storage to i8*
  call void @cspl_data_log(i8* %bitcast2, i32 8, i32 0, i32 28)
  call void @cspl_data_intra()
  %46 = load %class.BankAccount*, %class.BankAccount** %__old_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BankAccount* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BankAccount* %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %41, %class.BankAccount* %42, i64 %sub.ptr.div)
  call void @cspl_data_intra()
  %47 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  %48 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %48, i32 0, i32 0
  %49 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl23 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start24 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %49, i32 0, i32 0
  call void @cspl_data_inter()
  store %class.BankAccount* %47, %class.BankAccount** %_M_start24, align 8
  %bitcast3 = bitcast %class.BankAccount** %_M_start24 to i8*
  call void @cspl_data_log(i8* %bitcast3, i32 8, i32 1, i32 15)
  call void @cspl_data_intra()
  %50 = load %class.BankAccount*, %class.BankAccount** %__new_finish, align 8
  %51 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %51, i32 0, i32 0
  %52 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl25 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish26 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %52, i32 0, i32 1
  call void @cspl_data_inter()
  store %class.BankAccount* %50, %class.BankAccount** %_M_finish26, align 8
  %bitcast4 = bitcast %class.BankAccount** %_M_finish26 to i8*
  call void @cspl_data_log(i8* %bitcast4, i32 8, i32 1, i32 16)
  call void @cspl_data_intra()
  %53 = load %class.BankAccount*, %class.BankAccount** %__new_start, align 8
  call void @cspl_data_intra()
  %54 = load i64, i64* %__len, align 8
  %add.ptr27 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %53, i64 %54
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %56 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl28 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_end_of_storage29 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %56, i32 0, i32 2
  call void @cspl_data_inter()
  store %class.BankAccount* %add.ptr27, %class.BankAccount** %_M_end_of_storage29, align 8
  %bitcast5 = bitcast %class.BankAccount** %_M_end_of_storage29 to i8*
  call void @cspl_data_log(i8* %bitcast5, i32 8, i32 1, i32 17)
  ret void

eh.resume:                                        ; preds = %invoke.cont21
  call void @cspl_data_intra()
  %exn30 = load i8*, i8** %exn.slot, align 8
  call void @cspl_data_intra()
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn30, 0
  %lpad.val31 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val31

terminate.lpad:                                   ; preds = %lpad18
  %57 = landingpad { i8*, i32 }
          catch i8* null
  %58 = extractvalue { i8*, i32 } %57, 0
  call void @cspl_inter_cpt_transfer()
  call void @__clang_call_terminate(i8* %58) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %retval, %class.BankAccount** nonnull align 8 dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %retval, i32 0, i32 0
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %coerce.dive, align 8
  ret %class.BankAccount* %2
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %class.BankAccount* %__p, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #5 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  %1 = bitcast %class.BankAccount* %0 to i8*
  %2 = bitcast i8* %1 to %class.BankAccount*
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this, i64 %__n, i8* %__s) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  store i64 %__n, i64* %__n.addr, align 8
  call void @cspl_data_intra()
  store i8* %__s, i8** %__s.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  call void @cspl_inter_cpt_transfer()
  %call2 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  %sub = sub i64 %call, %call2
  call void @cspl_data_intra()
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cspl_data_intra()
  %1 = load i8*, i8** %__s.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #17
  unreachable

if.end:                                           ; preds = %entry
  call void @cspl_inter_cpt_transfer()
  %call3 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  call void @cspl_inter_cpt_transfer()
  %call4 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  call void @cspl_data_intra()
  store i64 %call4, i64* %ref.tmp, align 8
  call void @cspl_intra_cpt_transfer()
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  call void @cspl_data_intra()
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  call void @cspl_data_intra()
  store i64 %add, i64* %__len, align 8
  call void @cspl_data_intra()
  %3 = load i64, i64* %__len, align 8
  call void @cspl_inter_cpt_transfer()
  %call6 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  call void @cspl_data_intra()
  %4 = load i64, i64* %__len, align 8
  call void @cspl_intra_cpt_transfer()
  %call8 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  call void @cspl_intra_cpt_transfer()
  %call10 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this1) #3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @cspl_data_intra()
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %__rhs) #4 section ".Code_region_1" comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator.3"* %__lhs, %"class.__gnu_cxx::__normal_iterator.3"** %__lhs.addr, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator.3"* %__rhs, %"class.__gnu_cxx::__normal_iterator.3"** %__rhs.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %__lhs.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %0) #3
  call void @cspl_data_inter()
  %1 = load %class.BankAccount*, %class.BankAccount** %call, align 8
  %bitcast = bitcast %class.BankAccount** %call to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 29)
  call void @cspl_data_intra()
  %2 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %__rhs.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call1 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %2) #3
  call void @cspl_data_inter()
  %3 = load %class.BankAccount*, %class.BankAccount** %call1, align 8
  %bitcast1 = bitcast %class.BankAccount** %call1 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 30)
  %sub.ptr.lhs.cast = ptrtoint %class.BankAccount* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BankAccount* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %retval, %class.BankAccount** nonnull align 8 dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %retval, i32 0, i32 0
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %coerce.dive, align 8
  ret %class.BankAccount* %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %__first, %class.BankAccount* %__last, %class.BankAccount* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #4 section ".Code_region_1" comdat align 2 {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #3
  ret %class.BankAccount* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %this) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator.3"* %this, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %this1, i32 0, i32 0
  ret %class.BankAccount** %_M_current
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, %class.BankAccount* %__p) #4 section ".Code_region_1" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, %class.BankAccount* %2) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %__first, %class.BankAccount* %__last, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #5 section ".Code_region_0" comdat {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  call void @cspl_inter_cpt_transfer()
  call void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %1, %class.BankAccount* %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) #3
  call void @cspl_intra_cpt_transfer()
  %call2 = call i64 @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11 section ".Code_region_0"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #4 section ".Code_region_1" comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  call void @cspl_data_intra()
  store i64* %__a, i64** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64* %__b, i64** %__b.addr, align 8
  call void @cspl_data_intra()
  %0 = load i64*, i64** %__a.addr, align 8
  call void @cspl_data_inter()
  %1 = load i64, i64* %0, align 8
  %bitcast = bitcast i64* %0 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 31)
  call void @cspl_data_intra()
  %2 = load i64*, i64** %__b.addr, align 8
  call void @cspl_data_inter()
  %3 = load i64, i64* %2, align 8
  %bitcast1 = bitcast i64* %2 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 32)
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cspl_data_intra()
  %4 = load i64*, i64** %__b.addr, align 8
  call void @cspl_data_intra()
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @cspl_data_intra()
  %5 = load i64*, i64** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  call void @cspl_data_intra()
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) #4 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64 230584300921369395, i64* %__diffmax, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #3
  call void @cspl_data_intra()
  store i64 %call, i64* %__allocmax, align 8
  call void @cspl_intra_cpt_transfer()
  %call1 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__diffmax, i64* nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @cspl_data_intra()
  %1 = load i64, i64* %call1, align 8
  ret i64 %1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @cspl_inter_cpt_transfer()
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) #4 section ".Code_region_1" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_intra_cpt_transfer()
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1) #3
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #4 section ".Code_region_1" comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  call void @cspl_data_intra()
  store i64* %__a, i64** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64* %__b, i64** %__b.addr, align 8
  call void @cspl_data_intra()
  %0 = load i64*, i64** %__b.addr, align 8
  call void @cspl_data_inter()
  %1 = load i64, i64* %0, align 8
  %bitcast = bitcast i64* %0 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 33)
  call void @cspl_data_intra()
  %2 = load i64*, i64** %__a.addr, align 8
  call void @cspl_data_inter()
  %3 = load i64, i64* %2, align 8
  %bitcast1 = bitcast i64* %2 to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 34)
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cspl_data_intra()
  %4 = load i64*, i64** %__b.addr, align 8
  call void @cspl_data_intra()
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @cspl_data_intra()
  %5 = load i64*, i64** %__a.addr, align 8
  call void @cspl_data_intra()
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  call void @cspl_data_intra()
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %this, %class.BankAccount** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %__i.addr = alloca %class.BankAccount**, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::__normal_iterator.3"* %this, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount** %__i, %class.BankAccount*** %__i.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %0 = load %class.BankAccount**, %class.BankAccount*** %__i.addr, align 8
  call void @cspl_data_inter()
  %1 = load %class.BankAccount*, %class.BankAccount** %0, align 8
  %bitcast = bitcast %class.BankAccount** %0 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 35)
  call void @cspl_data_inter()
  store %class.BankAccount* %1, %class.BankAccount** %_M_current, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_current to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 18)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(%class.BankAccount* %__first, %class.BankAccount* %__last, %class.BankAccount* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #4 section ".Code_region_0" comdat align 2 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  %4 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call %class.BankAccount* @_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %1, %class.BankAccount* %2, %class.BankAccount* %3, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  ret %class.BankAccount* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %__first, %class.BankAccount* %__last, %class.BankAccount* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #4 section ".Code_region_0" comdat {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %0) #3
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call1 = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %1) #3
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call2 = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %2) #3
  call void @cspl_data_intra()
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call3 = call %class.BankAccount* @_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %call, %class.BankAccount* %call1, %class.BankAccount* %call2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #3
  ret %class.BankAccount* %call3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %__first, %class.BankAccount* %__last, %class.BankAccount* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #4 section ".Code_region_1" comdat {
entry:
  %__first.addr = alloca %class.BankAccount*, align 8
  %__last.addr = alloca %class.BankAccount*, align 8
  %__result.addr = alloca %class.BankAccount*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %__cur = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__first, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__last, %class.BankAccount** %__last.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__result, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__result.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %0, %class.BankAccount** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__last.addr, align 8
  %cmp = icmp ne %class.BankAccount* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_data_intra()
  %4 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call1 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %4) #3
  call void @cspl_data_intra()
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_(%class.BankAccount* %call, %class.BankAccount* %call1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @cspl_data_intra()
  %6 = load %class.BankAccount*, %class.BankAccount** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %class.BankAccount, %class.BankAccount* %6, i32 1
  call void @cspl_data_intra()
  store %class.BankAccount* %incdec.ptr, %class.BankAccount** %__first.addr, align 8
  call void @cspl_data_intra()
  %7 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  %incdec.ptr2 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %7, i32 1
  call void @cspl_data_intra()
  store %class.BankAccount* %incdec.ptr2, %class.BankAccount** %__cur, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @cspl_data_intra()
  %8 = load %class.BankAccount*, %class.BankAccount** %__cur, align 8
  ret %class.BankAccount* %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %__it) #4 section ".Code_region_1" comdat {
entry:
  %__it.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__it, %class.BankAccount** %__it.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__it.addr, align 8
  ret %class.BankAccount* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_(%class.BankAccount* %__dest, %class.BankAccount* %__orig, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #4 section ".Code_region_1" comdat {
entry:
  %__dest.addr = alloca %class.BankAccount*, align 8
  %__orig.addr = alloca %class.BankAccount*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__dest, %class.BankAccount** %__dest.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__orig, %class.BankAccount** %__orig.addr, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %__dest.addr, align 8
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__orig.addr, align 8
  call void @cspl_intra_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_(%class.BankAccount* nonnull align 8 dereferenceable(40) %2) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %call) #3
  call void @cspl_data_intra()
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  call void @cspl_data_intra()
  %4 = load %class.BankAccount*, %class.BankAccount** %__orig.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call1 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %4) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %3, %class.BankAccount* %call1) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, %class.BankAccount* %__p, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #4 section ".Code_region_1" comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_intra_cpt_transfer()
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1, %class.BankAccount* %2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_(%class.BankAccount* nonnull align 8 dereferenceable(40) %__t) #4 section ".Code_region_1" comdat {
entry:
  %__t.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__t, %class.BankAccount** %__t.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__t.addr, align 8
  ret %class.BankAccount* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %class.BankAccount* %__p, %class.BankAccount* nonnull align 8 dereferenceable(40) %__args) #4 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  %__args.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__args, %class.BankAccount** %__args.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  %1 = bitcast %class.BankAccount* %0 to i8*
  %2 = bitcast i8* %1 to %class.BankAccount*
  call void @cspl_data_intra()
  %3 = load %class.BankAccount*, %class.BankAccount** %__args.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  call void @cspl_inter_cpt_transfer()
  call void @_ZN11BankAccountC2EOS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %2, %class.BankAccount* nonnull align 8 dereferenceable(40) %call) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %__t) #4 section ".Code_region_0" comdat {
entry:
  %__t.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__t, %class.BankAccount** %__t.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__t.addr, align 8
  ret %class.BankAccount* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2EOS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %this, %class.BankAccount* nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  %.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %0, %class.BankAccount** %.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  %ownerName = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 0
  call void @cspl_data_intra()
  %1 = load %class.BankAccount*, %class.BankAccount** %.addr, align 8
  %ownerName2 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %1, i32 0, i32 0
  call void @cspl_inter_cpt_transfer()
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName2) #3
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_intra()
  %2 = load %class.BankAccount*, %class.BankAccount** %.addr, align 8
  %balance3 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %2, i32 0, i32 1
  call void @cspl_data_other()
  %3 = load double, double* %balance3, align 8
  %bitcast = bitcast double* %balance3 to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 36)
  call void @cspl_data_other()
  store double %3, double* %balance, align 8
  %bitcast1 = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 1, i32 19)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2 section ".Code_region_1"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %this, %class.BankAccount* %__p) #4 section ".Code_region_0" comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %__p, %class.BankAccount** %__p.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  call void @cspl_data_intra()
  %0 = load %class.BankAccount*, %class.BankAccount** %__p.addr, align 8
  call void @cspl_intra_cpt_transfer()
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK11BankAccount7displayEv(%class.BankAccount* nonnull align 8 dereferenceable(40) %this) #5 section ".Code_region_1" comdat align 2 {
entry:
  %this.addr = alloca %class.BankAccount*, align 8
  call void @cspl_data_intra()
  store %class.BankAccount* %this, %class.BankAccount** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %class.BankAccount*, %class.BankAccount** %this.addr, align 8
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %ownerName = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 0
  call void @cspl_intra_cpt_transfer()
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ownerName)
  call void @cspl_intra_cpt_transfer()
  %call3 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @cspl_inter_cpt_transfer()
  %call4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %balance = getelementptr inbounds %class.BankAccount, %class.BankAccount* %this1, i32 0, i32 1
  call void @cspl_data_other()
  %0 = load double, double* %balance, align 8
  %bitcast = bitcast double* %balance to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 37)
  call void @cspl_inter_cpt_transfer()
  %call5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call4, double %0)
  call void @cspl_intra_cpt_transfer()
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1 section ".Code_region_1"

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1 section ".Code_region_0"

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) #1 section ".Code_region_1"

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) #1 section ".Code_region_0"

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 section ".Code_region_1" comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @cspl_data_intra()
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @cspl_data_intra()
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @cspl_data_inter()
  %2 = load %class.BankAccount*, %class.BankAccount** %_M_start, align 8
  %bitcast = bitcast %class.BankAccount** %_M_start to i8*
  call void @cspl_data_log(i8* %bitcast, i32 8, i32 0, i32 38)
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %4, i32 0, i32 1
  call void @cspl_data_inter()
  %5 = load %class.BankAccount*, %class.BankAccount** %_M_finish, align 8
  %bitcast1 = bitcast %class.BankAccount** %_M_finish to i8*
  call void @cspl_data_log(i8* %bitcast1, i32 8, i32 0, i32 39)
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_inter_cpt_transfer()
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %6) #3
  call void @cspl_inter_cpt_transfer()
  invoke void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %2, %class.BankAccount* %5, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %7) #3
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @cspl_data_intra()
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  call void @cspl_data_intra()
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @cspl_intra_cpt_transfer()
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %11) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @cspl_data_intra()
  %exn = load i8*, i8** %exn.slot, align 8
  call void @cspl_inter_cpt_transfer()
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".Code_region_0" {
entry:
  call void @cspl_inter_cpt_transfer()
  call void @__cxx_global_var_init()
  ret void
}

declare void @cspl_intra_cpt_transfer()

declare void @cspl_inter_cpt_transfer()

declare void @cspl_inter_ind_call()

declare void @cspl_data_intra()

declare void @cspl_data_other()

declare void @cspl_data_log(i8*, i32, i32, i32)

declare void @cspl_data_global()

declare void @cspl_data_inter()

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { allocsize(0) }

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
