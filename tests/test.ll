; ModuleID = '/home/ao/Projects/recovery/tests/test.cpp'
source_filename = "/home/ao/Projects/recovery/tests/test.cpp"
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
@long_global = dso_local global i64 33333, align 8
@doudle_global = dso_local global double 2.577700e+01, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"dssd \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"John Doe\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Jane Smith\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Bob Johnson\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Bank Accounts:\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AUpdated Bank Accounts: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Global varibale int : \00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Global varibale long long_global : \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Global varibale double : \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"--------------------- \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"The addresses of long_global: \00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Updated Bank Accounts: \00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"End of code segment: \00", align 1
@_CODE_REGION_1__end = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"End of data segment: \00", align 1
@_DATA_REGION_1__end = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"End of text segment: %p\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"End of data segment: %p\0A\00", align 1
@_DATA_REGION_1__sdata_end = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"Addr of globle data ggbol: %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Account Owner: \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Account Balance: $\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Insufficient funds!\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4Afunv() #4 {
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4Bfunv() #5 {
  %1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.Bank, align 8
  %3 = alloca %class.Bank*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Bank, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::allocator.0", align 1
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::allocator.0", align 1
  %14 = alloca void ()*, align 8
  store i32 0, i32* %1, align 4
  call void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %2) #3
  %15 = invoke noalias nonnull i8* @_Znwm(i64 40) #15
          to label %16 unwind label %41

16:                                               ; preds = %0
  %17 = bitcast i8* %15 to %class.Bank*
  call void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %17) #3
  store %class.Bank* %17, %class.Bank** %3, align 8
  %18 = load %class.Bank*, %class.Bank** %3, align 8
  invoke void @_ZN4BankC2ERKS_(%class.Bank* nonnull align 8 dereferenceable(40) %6, %class.Bank* nonnull align 8 dereferenceable(40) %18)
          to label %19 unwind label %41

19:                                               ; preds = %16
  %20 = invoke noalias nonnull i8* @_Znwm(i64 4) #15
          to label %21 unwind label %45

21:                                               ; preds = %19
  %22 = bitcast i8* %20 to i32*
  store i32 113, i32* %22, align 4
  store i32* %22, i32** %7, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %23 unwind label %49

23:                                               ; preds = %21
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8, double 5.000000e+03)
          to label %24 unwind label %53

24:                                               ; preds = %23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
          to label %25 unwind label %58

25:                                               ; preds = %24
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %10, double 7.500000e+03)
          to label %26 unwind label %62

26:                                               ; preds = %25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
          to label %27 unwind label %67

27:                                               ; preds = %26
  invoke void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %12, double 3.000000e+03)
          to label %28 unwind label %71

28:                                               ; preds = %27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %12) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #3
  %29 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
          to label %30 unwind label %45

30:                                               ; preds = %28
  invoke void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %2)
          to label %31 unwind label %45

31:                                               ; preds = %30
  %32 = getelementptr inbounds %class.Bank, %class.Bank* %2, i32 0, i32 0
  %33 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %32, i64 0) #3
  invoke void @_ZN11BankAccount7depositEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %33, double 1.000000e+03)
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = getelementptr inbounds %class.Bank, %class.Bank* %2, i32 0, i32 0
  %36 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %35, i64 1) #3
  invoke void @_ZN11BankAccount8withdrawEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %36, double 2.000000e+03)
          to label %37 unwind label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @ggbol, align 4
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  store void ()* @_Z4Afunv, void ()** %14, align 8
  br label %77

41:                                               ; preds = %16, %0
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %4, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %5, align 4
  br label %178

45:                                               ; preds = %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %142, %140, %138, %136, %134, %132, %129, %127, %125, %122, %120, %118, %116, %114, %112, %110, %107, %105, %103, %100, %98, %96, %93, %91, %90, %88, %85, %81, %79, %77, %34, %31, %30, %28, %19
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %4, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %5, align 4
  br label %177

49:                                               ; preds = %21
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %4, align 8
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %23
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %4, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %5, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8) #3
  br label %57

57:                                               ; preds = %53, %49
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #3
  br label %177

58:                                               ; preds = %24
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %4, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %5, align 4
  br label %66

62:                                               ; preds = %25
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %4, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %5, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %10) #3
  br label %66

66:                                               ; preds = %62, %58
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #3
  br label %177

67:                                               ; preds = %26
  %68 = landingpad { i8*, i32 }
          cleanup
  %69 = extractvalue { i8*, i32 } %68, 0
  store i8* %69, i8** %4, align 8
  %70 = extractvalue { i8*, i32 } %68, 1
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %27
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  store i8* %73, i8** %4, align 8
  %74 = extractvalue { i8*, i32 } %72, 1
  store i32 %74, i32* %5, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %12) #3
  br label %75

75:                                               ; preds = %71, %67
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #3
  br label %177

76:                                               ; preds = %37
  store void ()* @_Z4Bfunv, void ()** %14, align 8
  br label %77

77:                                               ; preds = %76, %40
  %78 = load void ()*, void ()** %14, align 8
  invoke void %78()
          to label %79 unwind label %45

79:                                               ; preds = %77
  %80 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
          to label %81 unwind label %45

81:                                               ; preds = %79
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %80, i32 %83)
          to label %85 unwind label %45

85:                                               ; preds = %81
  %86 = load i32, i32* @ggbol, align 4
  %87 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84, i32 %86)
          to label %88 unwind label %45

88:                                               ; preds = %85
  %89 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
          to label %90 unwind label %45

90:                                               ; preds = %88
  invoke void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %2)
          to label %91 unwind label %45

91:                                               ; preds = %90
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
          to label %93 unwind label %45

93:                                               ; preds = %91
  %94 = load i32, i32* @ggbol, align 4
  %95 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %92, i32 %94)
          to label %96 unwind label %45

96:                                               ; preds = %93
  %97 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %95, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %98 unwind label %45

98:                                               ; preds = %96
  %99 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
          to label %100 unwind label %45

100:                                              ; preds = %98
  %101 = load i64, i64* @long_global, align 8
  %102 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99, i64 %101)
          to label %103 unwind label %45

103:                                              ; preds = %100
  %104 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %102, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %105 unwind label %45

105:                                              ; preds = %103
  %106 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
          to label %107 unwind label %45

107:                                              ; preds = %105
  %108 = load double, double* @doudle_global, align 8
  %109 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %106, double %108)
          to label %110 unwind label %45

110:                                              ; preds = %107
  %111 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %109, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %112 unwind label %45

112:                                              ; preds = %110
  %113 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
          to label %114 unwind label %45

114:                                              ; preds = %112
  %115 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %113, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %116 unwind label %45

116:                                              ; preds = %114
  store i32 11, i32* @ggbol, align 4
  store i64 3322333, i64* @long_global, align 8
  store double 2.157770e+02, double* @doudle_global, align 8
  %117 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
          to label %118 unwind label %45

118:                                              ; preds = %116
  %119 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %117, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %120 unwind label %45

120:                                              ; preds = %118
  %121 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
          to label %122 unwind label %45

122:                                              ; preds = %120
  %123 = load i32, i32* @ggbol, align 4
  %124 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %121, i32 %123)
          to label %125 unwind label %45

125:                                              ; preds = %122
  %126 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %124, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %127 unwind label %45

127:                                              ; preds = %125
  %128 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
          to label %129 unwind label %45

129:                                              ; preds = %127
  %130 = load i64, i64* @long_global, align 8
  %131 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %128, i64 %130)
          to label %132 unwind label %45

132:                                              ; preds = %129
  %133 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %131, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %134 unwind label %45

134:                                              ; preds = %132
  %135 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
          to label %136 unwind label %45

136:                                              ; preds = %134
  %137 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %135, i8* bitcast (i64* @long_global to i8*))
          to label %138 unwind label %45

138:                                              ; preds = %136
  %139 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %137, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %140 unwind label %45

140:                                              ; preds = %138
  %141 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
          to label %142 unwind label %45

142:                                              ; preds = %140
  %143 = load double, double* @doudle_global, align 8
  %144 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %141, double %143)
          to label %145 unwind label %45

145:                                              ; preds = %142
  %146 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %144, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %147 unwind label %45

147:                                              ; preds = %145
  %148 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
          to label %149 unwind label %45

149:                                              ; preds = %147
  %150 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %148, i8* bitcast (i32* @ggbol to i8*))
          to label %151 unwind label %45

151:                                              ; preds = %149
  %152 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
          to label %153 unwind label %45

153:                                              ; preds = %151
  %154 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
          to label %155 unwind label %45

155:                                              ; preds = %153
  %156 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %154, i8* bitcast (i32* @_CODE_REGION_1__end to i8*))
          to label %157 unwind label %45

157:                                              ; preds = %155
  %158 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
          to label %159 unwind label %45

159:                                              ; preds = %157
  %160 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
          to label %161 unwind label %45

161:                                              ; preds = %159
  %162 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %160, i8* bitcast (i32* @_DATA_REGION_1__end to i8*))
          to label %163 unwind label %45

163:                                              ; preds = %161
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
          to label %165 unwind label %45

165:                                              ; preds = %163
  %166 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* bitcast (i32* @_CODE_REGION_1__end to i8*))
          to label %167 unwind label %45

167:                                              ; preds = %165
  %168 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* bitcast (i32* @_DATA_REGION_1__end to i8*))
          to label %169 unwind label %45

169:                                              ; preds = %167
  %170 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* bitcast (i32* @_DATA_REGION_1__sdata_end to i8*))
          to label %171 unwind label %45

171:                                              ; preds = %169
  %172 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* bitcast (i32* @_DATA_REGION_1__end to i8*))
          to label %173 unwind label %45

173:                                              ; preds = %171
  %174 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* bitcast (i32* @ggbol to i8*))
          to label %175 unwind label %45

175:                                              ; preds = %173
  store i32 0, i32* %1, align 4
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %6) #3
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %2) #3
  %176 = load i32, i32* %1, align 4
  ret i32 %176

177:                                              ; preds = %75, %66, %57, %45
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %6) #3
  br label %178

178:                                              ; preds = %177, %41
  call void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %2) #3
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = insertvalue { i8*, i32 } undef, i8* %180, 0
  %183 = insertvalue { i8*, i32 } %182, i32 %181, 1
  resume { i8*, i32 } %183
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BankC2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.Bank*, align 8
  store %class.Bank* %0, %class.Bank** %2, align 8
  %3 = load %class.Bank*, %class.Bank** %2, align 8
  %4 = getelementptr inbounds %class.Bank, %class.Bank* %3, i32 0, i32 0
  call void @_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #8

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4BankC2ERKS_(%class.Bank* nonnull align 8 dereferenceable(40) %0, %class.Bank* nonnull align 8 dereferenceable(40) %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %class.Bank*, align 8
  %4 = alloca %class.Bank*, align 8
  store %class.Bank* %0, %class.Bank** %3, align 8
  store %class.Bank* %1, %class.Bank** %4, align 8
  %5 = load %class.Bank*, %class.Bank** %3, align 8
  %6 = getelementptr inbounds %class.Bank, %class.Bank* %5, i32 0, i32 0
  %7 = load %class.Bank*, %class.Bank** %4, align 8
  %8 = getelementptr inbounds %class.Bank, %class.Bank* %7, i32 0, i32 0
  call void @_ZNSt6vectorI11BankAccountSaIS0_EEC2ERKS2_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %6, %"class.std::vector"* nonnull align 8 dereferenceable(24) %8)
  %9 = getelementptr inbounds %class.Bank, %class.Bank* %5, i32 0, i32 1
  %10 = load %class.Bank*, %class.Bank** %4, align 8
  %11 = getelementptr inbounds %class.Bank, %class.Bank* %10, i32 0, i32 1
  %12 = bitcast i32* %9 to i8*
  %13 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.Bank* nonnull align 8 dereferenceable(40) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, double %2) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.Bank*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca double, align 8
  %7 = alloca %class.BankAccount, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %class.Bank* %0, %class.Bank** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store double %2, double* %6, align 8
  %10 = load %class.Bank*, %class.Bank** %4, align 8
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load double, double* %6, align 8
  call void @_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %11, double %12)
  %13 = getelementptr inbounds %class.Bank, %class.Bank* %10, i32 0, i32 0
  invoke void @_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %13, %class.BankAccount* nonnull align 8 dereferenceable(40) %7)
          to label %14 unwind label %15

14:                                               ; preds = %3
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %7) #3
  ret void

15:                                               ; preds = %3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %8, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %9, align 4
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %7) #3
  br label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK4Bank18displayAllAccountsEv(%class.Bank* nonnull align 8 dereferenceable(40) %0) #5 comdat align 2 {
  %2 = alloca %class.Bank*, align 8
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %class.BankAccount*, align 8
  store %class.Bank* %0, %class.Bank** %2, align 8
  %7 = load %class.Bank*, %class.Bank** %2, align 8
  %8 = getelementptr inbounds %class.Bank, %class.Bank* %7, i32 0, i32 0
  store %"class.std::vector"* %8, %"class.std::vector"** %3, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %10 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %class.BankAccount* %10, %class.BankAccount** %11, align 8
  %12 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %13 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %12) #3
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %class.BankAccount* %13, %class.BankAccount** %14, align 8
  br label %15

15:                                               ; preds = %21, %1
  %16 = call zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %5) #3
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4) #3
  store %class.BankAccount* %18, %class.BankAccount** %6, align 8
  %19 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  call void @_ZNK11BankAccount7displayEv(%class.BankAccount* nonnull align 8 dereferenceable(40) %19)
  %20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %21

21:                                               ; preds = %17
  %22 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4) #3
  br label %15

23:                                               ; preds = %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EEixEm(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, i64 %1) #4 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %10, i64 %11
  ret %class.BankAccount* %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccount7depositEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %0, double %1) #4 comdat align 2 {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca double, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = fadd double %8, %6
  store double %9, double* %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccount8withdrawEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %0, double %1) #5 comdat align 2 {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca double, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = load double, double* %4, align 8
  %9 = fcmp oge double %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = load i32, i32* @ggbol, align 4
  %13 = sitofp i32 %12 to double
  %14 = fadd double %11, %13
  %15 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fsub double %16, %14
  store double %17, double* %15, align 8
  br label %21

18:                                               ; preds = %2
  %19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %19, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %21

21:                                               ; preds = %18, %10
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BankD2Ev(%class.Bank* nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.Bank*, align 8
  store %class.Bank* %0, %class.Bank** %2, align 8
  %3 = load %class.Bank*, %class.Bank** %2, align 8
  %4 = getelementptr inbounds %class.Bank, %class.Bank* %3, i32 0, i32 0
  call void @_ZNSt6vectorI11BankAccountSaIS0_EED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %0, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI11BankAccountEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  %5 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %3 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountEC2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %3, i32 0, i32 0
  store %class.BankAccount* null, %class.BankAccount** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %3, i32 0, i32 1
  store %class.BankAccount* null, %class.BankAccount** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %3, i32 0, i32 2
  store %class.BankAccount* null, %class.BankAccount** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EEC2ERKS2_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, %"class.std::vector"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %10 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %11 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %12 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %13 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %12) #3
  %14 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %15 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %16 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %15) #3
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI11BankAccountES1_E17_S_select_on_copyERKS2_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %5, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2EmRKS1_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %11, i64 %13, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
          to label %17 unwind label %41

17:                                               ; preds = %2
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #3
  %18 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %19 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %18) #3
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store %class.BankAccount* %19, %class.BankAccount** %20, align 8
  %21 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %22 = call %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %21) #3
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store %class.BankAccount* %22, %class.BankAccount** %23, align 8
  %24 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %25 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %26, i32 0, i32 0
  %28 = load %class.BankAccount*, %class.BankAccount** %27, align 8
  %29 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %30 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %29) #3
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %32 = load %class.BankAccount*, %class.BankAccount** %31, align 8
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %34 = load %class.BankAccount*, %class.BankAccount** %33, align 8
  %35 = invoke %class.BankAccount* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(%class.BankAccount* %32, %class.BankAccount* %34, %class.BankAccount* %28, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %30)
          to label %36 unwind label %45

36:                                               ; preds = %17
  %37 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %38 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %39 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %38 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %39, i32 0, i32 1
  store %class.BankAccount* %35, %class.BankAccount** %40, align 8
  ret void

41:                                               ; preds = %2
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %6, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %7, align 4
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #3
  br label %50

45:                                               ; preds = %17
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %6, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %7, align 4
  %49 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %49) #3
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = insertvalue { i8*, i32 } undef, i8* %51, 0
  %54 = insertvalue { i8*, i32 } %53, i32 %52, 1
  resume { i8*, i32 } %54
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %14 = ptrtoint %class.BankAccount* %8 to i64
  %15 = ptrtoint %class.BankAccount* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 40
  ret i64 %17
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaI11BankAccountES1_E17_S_select_on_copyERKS2_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #5 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE37select_on_container_copy_constructionERKS1_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2EmRKS1_(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, i64 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %9 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2ERKS1_(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %10, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %11) #3
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %9, i64 %12)
          to label %13 unwind label %14

13:                                               ; preds = %3
  ret void

14:                                               ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %10) #3
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #5 comdat {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %class.BankAccount* %0, %class.BankAccount** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %class.BankAccount* %1, %class.BankAccount** %12, align 8
  store %class.BankAccount* %2, %class.BankAccount** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %19 = load %class.BankAccount*, %class.BankAccount** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %21 = load %class.BankAccount*, %class.BankAccount** %20, align 8
  %22 = call %class.BankAccount* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(%class.BankAccount* %19, %class.BankAccount* %21, %class.BankAccount* %17)
  ret %class.BankAccount* %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %2, %class.BankAccount** nonnull align 8 dereferenceable(8) %8) #3
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  ret %class.BankAccount* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %2, %class.BankAccount** nonnull align 8 dereferenceable(8) %8) #3
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  ret %class.BankAccount* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %class.BankAccount*, %class.BankAccount** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %class.BankAccount*, %class.BankAccount** %16, align 8
  %18 = ptrtoint %class.BankAccount* %13 to i64
  %19 = ptrtoint %class.BankAccount* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 40
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %5, %class.BankAccount* %9, i64 %21)
          to label %22 unwind label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %23) #3
  ret void

24:                                               ; preds = %1
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %28) #3
  br label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %30) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE37select_on_container_copy_constructionERKS1_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %6, %"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %8) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %"class.__gnu_cxx::new_allocator"* %1, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2ERKS1_(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %0, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %5 to %"class.std::allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaI11BankAccountEC2ERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #3
  %8 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %8) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_M_create_storageEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, i64 %1) #5 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %9, i32 0, i32 0
  store %class.BankAccount* %7, %class.BankAccount** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %11 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %15 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %16, i32 0, i32 1
  store %class.BankAccount* %14, %class.BankAccount** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %18 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load %class.BankAccount*, %class.BankAccount** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %25, i32 0, i32 2
  store %class.BankAccount* %23, %class.BankAccount** %26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %0, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"*, %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI11BankAccountED2Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, i64 %1) #5 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = load i64, i64* %4, align 8
  %12 = call %class.BankAccount* @_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %10, i64 %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi %class.BankAccount* [ %12, %8 ], [ null, %13 ]
  ret %class.BankAccount* %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1) #5 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %class.BankAccount* @_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %6, i64 %7, i8* null)
  ret %class.BankAccount* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1, i8* %2) #5 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 40
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #18
  %16 = bitcast i8* %15 to %class.BankAccount*
  ret %class.BankAccount* %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 230584300921369395
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2) #5 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %class.BankAccount* %0, %class.BankAccount** %10, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %class.BankAccount* %1, %class.BankAccount** %11, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  store i8 1, i8* %7, align 1
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %18 = load %class.BankAccount*, %class.BankAccount** %17, align 8
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %20 = load %class.BankAccount*, %class.BankAccount** %19, align 8
  %21 = call %class.BankAccount* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(%class.BankAccount* %18, %class.BankAccount* %20, %class.BankAccount* %16)
  ret %class.BankAccount* %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %class.BankAccount* %0, %class.BankAccount** %10, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %class.BankAccount* %1, %class.BankAccount** %11, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %12 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  store %class.BankAccount* %12, %class.BankAccount** %7, align 8
  br label %13

13:                                               ; preds = %20, %3
  %14 = call zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %5) #3
  br i1 %14, label %15, label %34

15:                                               ; preds = %13
  %16 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %17 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %16) #3
  %18 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4) #3
  invoke void @_ZSt10_ConstructI11BankAccountJRKS0_EEvPT_DpOT0_(%class.BankAccount* %17, %class.BankAccount* nonnull align 8 dereferenceable(40) %18)
          to label %19 unwind label %24

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  %21 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %4) #3
  %22 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %23 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %22, i32 1
  store %class.BankAccount* %23, %class.BankAccount** %7, align 8
  br label %13, !llvm.loop !4

24:                                               ; preds = %15
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %8, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @__cxa_begin_catch(i8* %29) #3
  %31 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %32 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  invoke void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %31, %class.BankAccount* %32)
          to label %33 unwind label %36

33:                                               ; preds = %28
  invoke void @__cxa_rethrow() #17
          to label %50 unwind label %36

34:                                               ; preds = %13
  %35 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  ret %class.BankAccount* %35

36:                                               ; preds = %33, %28
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %8, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %40 unwind label %47

40:                                               ; preds = %36
  br label %42

41:                                               ; No predecessors!
  call void @llvm.trap()
  unreachable

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = insertvalue { i8*, i32 } undef, i8* %43, 0
  %46 = insertvalue { i8*, i32 } %45, i32 %44, 1
  resume { i8*, i32 } %46

47:                                               ; preds = %36
  %48 = landingpad { i8*, i32 }
          catch i8* null
  %49 = extractvalue { i8*, i32 } %48, 0
  call void @__clang_call_terminate(i8* %49) #16
  unreachable

50:                                               ; preds = %33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %5) #3
  %7 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %8) #3
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %11 = icmp ne %class.BankAccount* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI11BankAccountJRKS0_EEvPT_DpOT0_(%class.BankAccount* %0, %class.BankAccount* nonnull align 8 dereferenceable(40) %1) #5 comdat {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = bitcast %class.BankAccount* %5 to i8*
  %7 = bitcast i8* %6 to %class.BankAccount*
  %8 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %9 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %8) #3
  call void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %7, %class.BankAccount* nonnull align 8 dereferenceable(40) %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  ret %class.BankAccount* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  ret %class.BankAccount* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %6 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 1
  store %class.BankAccount* %6, %class.BankAccount** %4, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %3
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %0, %class.BankAccount* %1) #5 comdat {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_(%class.BankAccount* %5, %class.BankAccount* %6)
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret %class.BankAccount** %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  ret %class.BankAccount* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %0, %class.BankAccount* nonnull align 8 dereferenceable(40) %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 0
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %8 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %7, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8)
  %9 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 1
  %10 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %11 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %9, align 8
  ret void
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_(%class.BankAccount* %0, %class.BankAccount* %1) #5 comdat align 2 {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  br label %5

5:                                                ; preds = %12, %2
  %6 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %8 = icmp ne %class.BankAccount* %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %11 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %10) #3
  call void @_ZSt8_DestroyI11BankAccountEvPT_(%class.BankAccount* %11)
  br label %12

12:                                               ; preds = %9
  %13 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %14 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %13, i32 1
  store %class.BankAccount* %14, %class.BankAccount** %3, align 8
  br label %5, !llvm.loop !6

15:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI11BankAccountEvPT_(%class.BankAccount* %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %3) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  %4 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %0, %class.BankAccount** nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %class.BankAccount**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %class.BankAccount** %1, %class.BankAccount*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load %class.BankAccount**, %class.BankAccount*** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  store %class.BankAccount* %8, %class.BankAccount** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0, %class.BankAccount* %1, i64 %2) #5 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %9 = icmp ne %class.BankAccount* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %12, %class.BankAccount* %13, i64 %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, i64 %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %8, %class.BankAccount* %9, i64 %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, i64 %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %9 = bitcast %class.BankAccount* %8 to i8*
  call void @_ZdlPv(i8* %9) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #14

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(%class.BankAccount* nonnull align 8 dereferenceable(40) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, double %2) unnamed_addr #9 comdat align 2 {
  %4 = alloca %class.BankAccount*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca double, align 8
  store %class.BankAccount* %0, %class.BankAccount** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store double %2, double* %6, align 8
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %8 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %7, i32 0, i32 0
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %9)
  %10 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %7, i32 0, i32 1
  %11 = load double, double* %6, align 8
  store double %11, double* %10, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, %class.BankAccount* nonnull align 8 dereferenceable(40) %1) #5 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %class.BankAccount*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %6 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %7 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %9, i32 0, i32 1
  %11 = load %class.BankAccount*, %class.BankAccount** %10, align 8
  %12 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %13 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %14, i32 0, i32 2
  %16 = load %class.BankAccount*, %class.BankAccount** %15, align 8
  %17 = icmp ne %class.BankAccount* %11, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %20 to %"class.std::allocator"*
  %22 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %22, i32 0, i32 0
  %24 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %23 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %24, i32 0, i32 1
  %26 = load %class.BankAccount*, %class.BankAccount** %25, align 8
  %27 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %21, %class.BankAccount* %26, %class.BankAccount* nonnull align 8 dereferenceable(40) %27)
  %28 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load %class.BankAccount*, %class.BankAccount** %31, align 8
  %33 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %32, i32 1
  store %class.BankAccount* %33, %class.BankAccount** %31, align 8
  br label %40

34:                                               ; preds = %2
  %35 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %6) #3
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store %class.BankAccount* %35, %class.BankAccount** %36, align 8
  %37 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  %39 = load %class.BankAccount*, %class.BankAccount** %38, align 8
  call void @_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %6, %class.BankAccount* %39, %class.BankAccount* nonnull align 8 dereferenceable(40) %37)
  br label %40

40:                                               ; preds = %34, %18
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %10 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %11 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %8, %class.BankAccount* %9, %class.BankAccount* nonnull align 8 dereferenceable(40) %11)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %2) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %class.BankAccount*, align 8
  %9 = alloca %class.BankAccount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %12 = alloca %class.BankAccount*, align 8
  %13 = alloca %class.BankAccount*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %4, i32 0, i32 0
  store %class.BankAccount* %1, %class.BankAccount** %16, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %17 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %18 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nonnull align 8 dereferenceable(24) %17, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  store i64 %18, i64* %7, align 8
  %19 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %20 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %21, i32 0, i32 0
  %23 = load %class.BankAccount*, %class.BankAccount** %22, align 8
  store %class.BankAccount* %23, %class.BankAccount** %8, align 8
  %24 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %25 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %26, i32 0, i32 1
  %28 = load %class.BankAccount*, %class.BankAccount** %27, align 8
  store %class.BankAccount* %28, %class.BankAccount** %9, align 8
  %29 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %17) #3
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %11, i32 0, i32 0
  store %class.BankAccount* %29, %class.BankAccount** %30, align 8
  %31 = call i64 @_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %11) #3
  store i64 %31, i64* %10, align 8
  %32 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %33 = load i64, i64* %7, align 8
  %34 = call %class.BankAccount* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %32, i64 %33)
  store %class.BankAccount* %34, %class.BankAccount** %12, align 8
  %35 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  store %class.BankAccount* %35, %class.BankAccount** %13, align 8
  %36 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %36, i32 0, i32 0
  %38 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %37 to %"class.std::allocator"*
  %39 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %39, i64 %40
  %42 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %43 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %42) #3
  invoke void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %38, %class.BankAccount* %41, %class.BankAccount* nonnull align 8 dereferenceable(40) %43)
          to label %44 unwind label %61

44:                                               ; preds = %3
  store %class.BankAccount* null, %class.BankAccount** %13, align 8
  %45 = load %class.BankAccount*, %class.BankAccount** %8, align 8
  %46 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %4) #3
  %47 = load %class.BankAccount*, %class.BankAccount** %46, align 8
  %48 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %49 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %50 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %49) #3
  %51 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %45, %class.BankAccount* %47, %class.BankAccount* %48, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %50) #3
  store %class.BankAccount* %51, %class.BankAccount** %13, align 8
  %52 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %53 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %52, i32 1
  store %class.BankAccount* %53, %class.BankAccount** %13, align 8
  %54 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %4) #3
  %55 = load %class.BankAccount*, %class.BankAccount** %54, align 8
  %56 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %57 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %58 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %59 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %58) #3
  %60 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %55, %class.BankAccount* %56, %class.BankAccount* %57, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %59) #3
  store %class.BankAccount* %60, %class.BankAccount** %13, align 8
  br label %93

61:                                               ; preds = %3
  %62 = landingpad { i8*, i32 }
          catch i8* null
  %63 = extractvalue { i8*, i32 } %62, 0
  store i8* %63, i8** %14, align 8
  %64 = extractvalue { i8*, i32 } %62, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %14, align 8
  %67 = call i8* @__cxa_begin_catch(i8* %66) #3
  %68 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %69 = icmp ne %class.BankAccount* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %72 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %71, i32 0, i32 0
  %73 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %72 to %"class.std::allocator"*
  %74 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %74, i64 %75
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %73, %class.BankAccount* %76) #3
  br label %87

77:                                               ; preds = %65
  %78 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %79 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %80 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %81 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %80) #3
  invoke void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %78, %class.BankAccount* %79, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %81)
          to label %82 unwind label %83

82:                                               ; preds = %77
  br label %87

83:                                               ; preds = %91, %87, %77
  %84 = landingpad { i8*, i32 }
          cleanup
  %85 = extractvalue { i8*, i32 } %84, 0
  store i8* %85, i8** %14, align 8
  %86 = extractvalue { i8*, i32 } %84, 1
  store i32 %86, i32* %15, align 4
  invoke void @__cxa_end_catch()
          to label %92 unwind label %128

87:                                               ; preds = %82, %70
  %88 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %89 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %90 = load i64, i64* %7, align 8
  invoke void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %88, %class.BankAccount* %89, i64 %90)
          to label %91 unwind label %83

91:                                               ; preds = %87
  invoke void @__cxa_rethrow() #17
          to label %131 unwind label %83

92:                                               ; preds = %83
  br label %123

93:                                               ; preds = %44
  %94 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %95 = load %class.BankAccount*, %class.BankAccount** %8, align 8
  %96 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %97 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %96, i32 0, i32 0
  %98 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %97 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %99 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %98, i32 0, i32 2
  %100 = load %class.BankAccount*, %class.BankAccount** %99, align 8
  %101 = load %class.BankAccount*, %class.BankAccount** %8, align 8
  %102 = ptrtoint %class.BankAccount* %100 to i64
  %103 = ptrtoint %class.BankAccount* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 40
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %94, %class.BankAccount* %95, i64 %105)
  %106 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %107 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %108 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %109, i32 0, i32 0
  store %class.BankAccount* %106, %class.BankAccount** %110, align 8
  %111 = load %class.BankAccount*, %class.BankAccount** %13, align 8
  %112 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %113 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %112, i32 0, i32 0
  %114 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %113 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %115 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %114, i32 0, i32 1
  store %class.BankAccount* %111, %class.BankAccount** %115, align 8
  %116 = load %class.BankAccount*, %class.BankAccount** %12, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %116, i64 %117
  %119 = bitcast %"class.std::vector"* %17 to %"struct.std::_Vector_base"*
  %120 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %119, i32 0, i32 0
  %121 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %120 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %122 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %121, i32 0, i32 2
  store %class.BankAccount* %118, %class.BankAccount** %122, align 8
  ret void

123:                                              ; preds = %92
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = insertvalue { i8*, i32 } undef, i8* %124, 0
  %127 = insertvalue { i8*, i32 } %126, i32 %125, 1
  resume { i8*, i32 } %127

128:                                              ; preds = %83
  %129 = landingpad { i8*, i32 }
          catch i8* null
  %130 = extractvalue { i8*, i32 } %129, 0
  call void @__clang_call_terminate(i8* %130) #16
  unreachable

131:                                              ; preds = %91
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE3endEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %2, %class.BankAccount** nonnull align 8 dereferenceable(8) %8) #3
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  ret %class.BankAccount* %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %2) #5 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %9 = bitcast %class.BankAccount* %8 to i8*
  %10 = bitcast i8* %9 to %class.BankAccount*
  %11 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %12 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %11) #3
  call void @_ZN11BankAccountC2ERKS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %10, %class.BankAccount* nonnull align 8 dereferenceable(40) %12)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, i64 %1, i8* %2) #5 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %11 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %16) #17
  unreachable

17:                                               ; preds = %3
  %18 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %19 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  store i64 %19, i64* %8, align 8
  %20 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %8, i64* nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %9) #3
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %0, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %1, %"class.__gnu_cxx::__normal_iterator.3"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  %6 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %5) #3
  %7 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %4, align 8
  %9 = call nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %8) #3
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %11 = ptrtoint %class.BankAccount* %7 to i64
  %12 = ptrtoint %class.BankAccount* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 40
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %2, %class.BankAccount** nonnull align 8 dereferenceable(8) %8) #3
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  ret %class.BankAccount* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #4 comdat align 2 {
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store %class.BankAccount* %0, %class.BankAccount** %5, align 8
  store %class.BankAccount* %1, %class.BankAccount** %6, align 8
  store %class.BankAccount* %2, %class.BankAccount** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %10 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %11 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %12 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %14 = call %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(%class.BankAccount* %10, %class.BankAccount* %11, %class.BankAccount* %12, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13) #3
  ret %class.BankAccount* %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.BankAccount** @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %0, %"class.__gnu_cxx::__normal_iterator.3"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %3, i32 0, i32 0
  ret %class.BankAccount** %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1) #4 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %6, %class.BankAccount* %7) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %0, %class.BankAccount* %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #5 comdat {
  %4 = alloca %class.BankAccount*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  call void @_ZSt8_DestroyIP11BankAccountEvT_S2_(%class.BankAccount* %7, %class.BankAccount* %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %4) #3
  %6 = call i64 @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #3
  ret i64 %6
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  store i64 230584300921369395, i64* %3, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %6 = call i64 @_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #3
  store i64 %6, i64* %4, align 8
  %7 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %3, i64* nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %7, align 8
  ret i64 %9

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %4) #3
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* nonnull align 8 dereferenceable(8) %0, %class.BankAccount** nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %4 = alloca %class.BankAccount**, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %0, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  store %class.BankAccount** %1, %class.BankAccount*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  %7 = load %class.BankAccount**, %class.BankAccount*** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  store %class.BankAccount* %8, %class.BankAccount** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #4 comdat align 2 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca %class.BankAccount*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %6, align 8
  store %class.BankAccount* %1, %class.BankAccount** %7, align 8
  store %class.BankAccount* %2, %class.BankAccount** %8, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %9, align 8
  %10 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %11 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %12 = load %class.BankAccount*, %class.BankAccount** %8, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %14 = call %class.BankAccount* @_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %10, %class.BankAccount* %11, %class.BankAccount* %12, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13) #3
  ret %class.BankAccount* %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #4 comdat {
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %5, align 8
  store %class.BankAccount* %1, %class.BankAccount** %6, align 8
  store %class.BankAccount* %2, %class.BankAccount** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %10 = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %9) #3
  %11 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %12 = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %11) #3
  %13 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  %14 = call %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %13) #3
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %16 = call %class.BankAccount* @_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %10, %class.BankAccount* %12, %class.BankAccount* %14, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %15) #3
  ret %class.BankAccount* %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BankAccount* %0, %class.BankAccount* %1, %class.BankAccount* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #4 comdat {
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  %7 = alloca %class.BankAccount*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %5, align 8
  store %class.BankAccount* %1, %class.BankAccount** %6, align 8
  store %class.BankAccount* %2, %class.BankAccount** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %10 = load %class.BankAccount*, %class.BankAccount** %7, align 8
  store %class.BankAccount* %10, %class.BankAccount** %9, align 8
  br label %11

11:                                               ; preds = %21, %4
  %12 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %13 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %14 = icmp ne %class.BankAccount* %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %17 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %16) #3
  %18 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %19 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %18) #3
  %20 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  call void @_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_(%class.BankAccount* %17, %class.BankAccount* %19, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %20) #3
  br label %21

21:                                               ; preds = %15
  %22 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %23 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %22, i32 1
  store %class.BankAccount* %23, %class.BankAccount** %5, align 8
  %24 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %25 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %24, i32 1
  store %class.BankAccount* %25, %class.BankAccount** %9, align 8
  br label %11, !llvm.loop !7

26:                                               ; preds = %11
  %27 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  ret %class.BankAccount* %27
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.BankAccount* @_ZSt12__niter_baseIP11BankAccountET_S2_(%class.BankAccount* %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  ret %class.BankAccount* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_(%class.BankAccount* %0, %class.BankAccount* %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #4 comdat {
  %4 = alloca %class.BankAccount*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %9 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %10 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_(%class.BankAccount* nonnull align 8 dereferenceable(40) %9) #3
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7, %class.BankAccount* %8, %class.BankAccount* nonnull align 8 dereferenceable(40) %10) #3
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %12 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %13 = call %class.BankAccount* @_ZSt11__addressofI11BankAccountEPT_RS1_(%class.BankAccount* nonnull align 8 dereferenceable(40) %12) #3
  call void @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %11, %class.BankAccount* %13) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %2) #4 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %10 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %11 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %8, %class.BankAccount* %9, %class.BankAccount* nonnull align 8 dereferenceable(40) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  ret %class.BankAccount* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1, %class.BankAccount* nonnull align 8 dereferenceable(40) %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %class.BankAccount*, align 8
  %6 = alloca %class.BankAccount*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %class.BankAccount* %1, %class.BankAccount** %5, align 8
  store %class.BankAccount* %2, %class.BankAccount** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %class.BankAccount*, %class.BankAccount** %5, align 8
  %9 = bitcast %class.BankAccount* %8 to i8*
  %10 = bitcast i8* %9 to %class.BankAccount*
  %11 = load %class.BankAccount*, %class.BankAccount** %6, align 8
  %12 = call nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %11) #3
  call void @_ZN11BankAccountC2EOS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %10, %class.BankAccount* nonnull align 8 dereferenceable(40) %12) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %class.BankAccount* @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #4 comdat {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  ret %class.BankAccount* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11BankAccountC2EOS_(%class.BankAccount* nonnull align 8 dereferenceable(40) %0, %class.BankAccount* nonnull align 8 dereferenceable(40) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.BankAccount*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %class.BankAccount*, %class.BankAccount** %3, align 8
  %6 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 0
  %7 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %8 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %7, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %8) #3
  %9 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %5, i32 0, i32 1
  %10 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  %11 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %9, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull align 1 dereferenceable(1) %0, %class.BankAccount* %1) #4 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %class.BankAccount*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %class.BankAccount* %1, %class.BankAccount** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load %class.BankAccount*, %class.BankAccount** %4, align 8
  call void @_ZN11BankAccountD2Ev(%class.BankAccount* nonnull align 8 dereferenceable(40) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK11BankAccount7displayEv(%class.BankAccount* nonnull align 8 dereferenceable(40) %0) #5 comdat align 2 {
  %2 = alloca %class.BankAccount*, align 8
  store %class.BankAccount* %0, %class.BankAccount** %2, align 8
  %3 = load %class.BankAccount*, %class.BankAccount** %2, align 8
  %4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %5 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %3, i32 0, i32 0
  %6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %4, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %5)
  %7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %9 = getelementptr inbounds %class.BankAccount, %class.BankAccount* %3, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, double %10)
  %12 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11BankAccountSaIS0_EED2Ev(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %class.BankAccount*, %class.BankAccount** %9, align 8
  %11 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl"* %12 to %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data", %"struct.std::_Vector_base<BankAccount, std::allocator<BankAccount>>::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %class.BankAccount*, %class.BankAccount** %14, align 8
  %16 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %17 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %16) #3
  invoke void @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E(%class.BankAccount* %10, %class.BankAccount* %15, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %17)
          to label %18 unwind label %20

18:                                               ; preds = %1
  %19 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %19) #3
  ret void

20:                                               ; preds = %1
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %3, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %4, align 4
  %24 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev(%"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %24) #3
  br label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %26) #16
  unreachable
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

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
!3 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 19b8368225dc9ec5a0da547eae48c10dae13522d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
