; ModuleID = 'pathsiglib.cpp'
source_filename = "pathsiglib.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

@path_length = dso_local thread_local global i32 0, align 4
@my_hash = dso_local thread_local global i64 0, align 8
@input_hash = dso_local thread_local global i64 0, align 8
@batch_input_hash = dso_local thread_local global [8 x i64] zeroinitializer, align 16
@batch_path_hash = dso_local thread_local global [8 x i64] zeroinitializer, align 16
@batch_path_length = dso_local thread_local global [8 x i32] zeroinitializer, align 16
@batch_time = dso_local thread_local global [8 x i64] zeroinitializer, align 16
@batch_count = dso_local thread_local global i32 0, align 4
@logbuf = dso_local thread_local global [1000 x double] zeroinitializer, align 16
@log_count = dso_local thread_local global i32 0, align 4
@cspl_start = dso_local thread_local global i32 0, align 4
@start_time = dso_local thread_local global i64 0, align 8
@cspl_stop = external thread_local global i8, align 1
@outfile = external dso_local global %"class.std::basic_ofstream"*, align 8
@.str = private unnamed_addr constant [22 x i8] c"/tmp/func_profile.txt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" [ \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" ] \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"} \00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i64 @_Z6hasherm(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = shl i64 %5, 16
  %7 = load i64, i64* %3, align 8
  %8 = xor i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = lshr i64 %9, 5
  %11 = load i64, i64* %3, align 8
  %12 = xor i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = shl i64 %13, 1
  %15 = load i64, i64* %3, align 8
  %16 = xor i64 %15, %14
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_path_sig(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @cspl_start, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8, i8* @cspl_stop, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %20

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @path_length, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* @path_length, align 4
  %15 = load i64, i64* @my_hash, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = call i64 @_Z6hasherm(i64 %18)
  store i64 %19, i64* @my_hash, align 8
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_path_sig_start(i32 %0) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i8, i8* @cspl_stop, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @batch_path_length, i64 0, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_path_hash, i64 0, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_input_hash, i64 0, i64 %21
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %10, !llvm.loop !4

26:                                               ; preds = %10
  store i32 0, i32* @batch_count, align 4
  store i64 0, i64* @my_hash, align 8
  store i32 0, i32* @path_length, align 4
  store i64 0, i64* @input_hash, align 8
  store i32 0, i32* @log_count, align 4
  store i32 1, i32* @cspl_start, align 4
  %27 = call i64 @clock() #7
  store i64 %27, i64* @start_time, align 8
  %28 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %29 = icmp ne %"class.std::basic_ofstream"* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = call noalias nonnull i8* @_Znwm(i64 512) #8
  %32 = bitcast i8* %31 to %"class.std::basic_ofstream"*
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %32)
          to label %33 unwind label %36

33:                                               ; preds = %30
  store %"class.std::basic_ofstream"* %32, %"class.std::basic_ofstream"** @outfile, align 8
  %34 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %35 = call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %40

36:                                               ; preds = %30
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %4, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %5, align 4
  call void @_ZdlPv(i8* %31) #9
  br label %41

40:                                               ; preds = %8, %33, %26
  ret void

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = insertvalue { i8*, i32 } undef, i8* %42, 0
  %45 = insertvalue { i8*, i32 } %44, i32 %43, 1
  resume { i8*, i32 } %45
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #3

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248)) unnamed_addr #4

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #5

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248), i8*, i32) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_OpenmodeS_(i32 %0, i32 %1) #0 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_path_sig_end(i32 %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @cspl_start, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8, i8* @cspl_stop, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 0, i32* @cspl_start, align 4
  br label %90

11:                                               ; preds = %7
  store i32 0, i32* @cspl_start, align 4
  %12 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %13 = bitcast %"class.std::basic_ofstream"* %12 to %"class.std::basic_ostream"*
  %14 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %16 = bitcast %"class.std::basic_ofstream"* %15 to %"class.std::basic_ostream"*
  %17 = load i32, i32* @path_length, align 4
  %18 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %16, i32 %17)
  %19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i64, i64* @my_hash, align 8
  %21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %19, i64 %20)
  %22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* @input_hash, align 8
  %24 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %22, i64 %23)
  %25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %57, %11
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @batch_count, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %32 = bitcast %"class.std::basic_ofstream"* %31 to %"class.std::basic_ostream"*
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* @batch_path_length, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %32, i32 %36)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_path_hash, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %38, i64 %42)
  %44 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_input_hash, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %44, i64 %48)
  %50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_time, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %50, i64 %54)
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %30
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %26, !llvm.loop !6

60:                                               ; preds = %26
  %61 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %62 = bitcast %"class.std::basic_ofstream"* %61 to %"class.std::basic_ostream"*
  %63 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %65 = bitcast %"class.std::basic_ofstream"* %64 to %"class.std::basic_ostream"*
  %66 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %80, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @log_count, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %73 = bitcast %"class.std::basic_ofstream"* %72 to %"class.std::basic_ostream"*
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1000 x double], [1000 x double]* @logbuf, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %73, double %77)
  %79 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %67, !llvm.loop !7

83:                                               ; preds = %67
  %84 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %85 = bitcast %"class.std::basic_ofstream"* %84 to %"class.std::basic_ostream"*
  %86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @log_count, align 4
  store i32 0, i32* @batch_count, align 4
  %87 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %88 = bitcast %"class.std::basic_ofstream"* %87 to %"class.std::basic_ostream"*
  %89 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %88)
  br label %90

90:                                               ; preds = %83, %10
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_inputhash(i32 %0, i32 %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @cspl_start, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8, i8* @cspl_stop, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %80

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_start(i8* %18)
  %19 = load i32, i32* @batch_count, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @batch_count, align 4
  br label %25

25:                                               ; preds = %22, %16
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ule i32 %33, 160
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 3
  %37 = load i8*, i8** %36, align 16
  %38 = getelementptr i8, i8* %37, i32 %33
  %39 = bitcast i8* %38 to double*
  %40 = add i32 %33, 16
  store i32 %40, i32* %32, align 4
  br label %46

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to double*
  %45 = getelementptr i8, i8* %43, i32 8
  store i8* %45, i8** %42, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi double* [ %39, %35 ], [ %44, %41 ]
  %48 = load double, double* %47, align 8
  store double %48, double* %7, align 8
  %49 = bitcast double* %7 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* @input_hash, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = call i64 @_Z6hasherm(i64 %53)
  store i64 %54, i64* @input_hash, align 8
  %55 = load i64, i64* @input_hash, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_input_hash, i64 0, i64 %57
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %26, !llvm.loop !8

62:                                               ; preds = %26
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %64 = bitcast %struct.__va_list_tag* %63 to i8*
  call void @llvm.va_end(i8* %64)
  %65 = load i32, i32* @path_length, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* @batch_path_length, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i64, i64* @my_hash, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_path_hash, i64 0, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = call i64 @clock() #7
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @start_time, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i64], [8 x i64]* @batch_time, i64 0, i64 %78
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %62, %15
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_logging(i32 %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @cspl_start, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8, i8* @cspl_stop, align 1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  br label %50

12:                                               ; preds = %8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_start(i8* %14)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %44, %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ule i32 %22, 160
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = getelementptr i8, i8* %26, i32 %22
  %28 = bitcast i8* %27 to double*
  %29 = add i32 %22, 16
  store i32 %29, i32* %21, align 4
  br label %35

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to double*
  %34 = getelementptr i8, i8* %32, i32 8
  store i8* %34, i8** %31, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi double* [ %28, %24 ], [ %33, %30 ]
  %37 = load double, double* %36, align 8
  store double %37, double* %5, align 8
  %38 = load double, double* %5, align 8
  %39 = load i32, i32* @log_count, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1000 x double], [1000 x double]* @logbuf, i64 0, i64 %40
  store double %38, double* %41, align 8
  %42 = load i32, i32* @log_count, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @log_count, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %15, !llvm.loop !9

47:                                               ; preds = %15
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %49 = bitcast %struct.__va_list_tag* %48 to i8*
  call void @llvm.va_end(i8* %49)
  br label %50

50:                                               ; preds = %47, %11
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }

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
