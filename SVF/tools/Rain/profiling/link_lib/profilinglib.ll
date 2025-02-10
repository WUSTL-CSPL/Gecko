; ModuleID = 'profilinglib.cpp'
source_filename = "profilinglib.cpp"
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

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

@alldata = dso_local thread_local global [7070 x [7 x i64]] zeroinitializer, align 16
@outfile = dso_local global %"class.std::basic_ofstream"* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"/tmp/func_profile.txt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" ---- std: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_beginInst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %5
  %7 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp uge i64 %8, 1000
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  %12 = call i64 @clock() #6
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %15
  %17 = getelementptr inbounds [7 x i64], [7 x i64]* %16, i64 0, i64 0
  store i64 %13, i64* %17, align 8
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_returnInst(i32 %0) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %9
  %11 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %12, 1000
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %194

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %17
  %19 = getelementptr inbounds [7 x i64], [7 x i64]* %18, i64 0, i64 2
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = call i64 @clock() #6
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %25
  %27 = getelementptr inbounds [7 x i64], [7 x i64]* %26, i64 0, i64 1
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %30
  %32 = getelementptr inbounds [7 x i64], [7 x i64]* %31, i64 0, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %28, %33
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = mul i64 %35, %36
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %39
  %41 = getelementptr inbounds [7 x i64], [7 x i64]* %40, i64 0, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %37
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %46
  %48 = getelementptr inbounds [7 x i64], [7 x i64]* %47, i64 0, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %44
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %52
  %54 = getelementptr inbounds [7 x i64], [7 x i64]* %53, i64 0, i64 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %15
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %59
  %61 = getelementptr inbounds [7 x i64], [7 x i64]* %60, i64 0, i64 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57, %15
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %68
  %70 = getelementptr inbounds [7 x i64], [7 x i64]* %69, i64 0, i64 5
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %73
  %75 = getelementptr inbounds [7 x i64], [7 x i64]* %74, i64 0, i64 6
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i64, i64* %4, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %82
  %84 = getelementptr inbounds [7 x i64], [7 x i64]* %83, i64 0, i64 6
  store i64 %80, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %87
  %89 = getelementptr inbounds [7 x i64], [7 x i64]* %88, i64 0, i64 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %194

92:                                               ; preds = %85
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %94
  %96 = getelementptr inbounds [7 x i64], [7 x i64]* %95, i64 0, i64 2
  %97 = load i64, i64* %96, align 8
  %98 = urem i64 %97, 100
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %194

100:                                              ; preds = %92
  %101 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %102 = icmp ne %"class.std::basic_ofstream"* %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = call noalias nonnull i8* @_Znwm(i64 512) #7
  %105 = bitcast i8* %104 to %"class.std::basic_ofstream"*
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %105)
          to label %106 unwind label %109

106:                                              ; preds = %103
  store %"class.std::basic_ofstream"* %105, %"class.std::basic_ofstream"** @outfile, align 8
  %107 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %108 = call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* nonnull align 8 dereferenceable(248) %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %113

109:                                              ; preds = %103
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  store i8* %111, i8** %5, align 8
  %112 = extractvalue { i8*, i32 } %110, 1
  store i32 %112, i32* %6, align 4
  call void @_ZdlPv(i8* %104) #8
  br label %195

113:                                              ; preds = %106, %100
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %115
  %117 = getelementptr inbounds [7 x i64], [7 x i64]* %116, i64 0, i64 4
  %118 = load i64, i64* %117, align 8
  %119 = uitofp i64 %118 to double
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %121
  %123 = getelementptr inbounds [7 x i64], [7 x i64]* %122, i64 0, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = uitofp i64 %124 to double
  %126 = fdiv double %119, %125
  store double %126, double* %7, align 8
  %127 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %128 = bitcast %"class.std::basic_ofstream"* %127 to %"class.std::basic_ostream"*
  %129 = load i32, i32* %2, align 4
  %130 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %128, i32 %129)
  %131 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %133
  %135 = getelementptr inbounds [7 x i64], [7 x i64]* %134, i64 0, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = udiv i64 %136, 100
  %138 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %131, i64 %137)
  %139 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %141
  %143 = getelementptr inbounds [7 x i64], [7 x i64]* %142, i64 0, i64 3
  %144 = load i64, i64* %143, align 8
  %145 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %139, i64 %144)
  %146 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %148
  %150 = getelementptr inbounds [7 x i64], [7 x i64]* %149, i64 0, i64 4
  %151 = load i64, i64* %150, align 8
  %152 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %146, i64 %151)
  %153 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %155
  %157 = getelementptr inbounds [7 x i64], [7 x i64]* %156, i64 0, i64 5
  %158 = load i64, i64* %157, align 8
  %159 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %153, i64 %158)
  %160 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %162
  %164 = getelementptr inbounds [7 x i64], [7 x i64]* %163, i64 0, i64 6
  %165 = load i64, i64* %164, align 8
  %166 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %160, i64 %165)
  %167 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %169
  %171 = getelementptr inbounds [7 x i64], [7 x i64]* %170, i64 0, i64 3
  %172 = load i64, i64* %171, align 8
  %173 = uitofp i64 %172 to double
  %174 = load i32, i32* %2, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [7070 x [7 x i64]], [7070 x [7 x i64]]* @alldata, i64 0, i64 %175
  %177 = getelementptr inbounds [7 x i64], [7 x i64]* %176, i64 0, i64 2
  %178 = load i64, i64* %177, align 8
  %179 = uitofp i64 %178 to double
  %180 = fdiv double %173, %179
  %181 = load double, double* %7, align 8
  %182 = load double, double* %7, align 8
  %183 = fmul double %181, %182
  %184 = fsub double %180, %183
  %185 = load double, double* %7, align 8
  %186 = load double, double* %7, align 8
  %187 = fmul double %185, %186
  %188 = fdiv double %184, %187
  %189 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %167, double %188)
  %190 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %191 = load %"class.std::basic_ofstream"*, %"class.std::basic_ofstream"** @outfile, align 8
  %192 = bitcast %"class.std::basic_ofstream"* %191 to %"class.std::basic_ostream"*
  %193 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %192)
  br label %194

194:                                              ; preds = %14, %113, %92, %85
  ret void

195:                                              ; preds = %109
  %196 = load i8*, i8** %5, align 8
  %197 = load i32, i32* %6, align 4
  %198 = insertvalue { i8*, i32 } undef, i8* %196, 0
  %199 = insertvalue { i8*, i32 } %198, i32 %197, 1
  resume { i8*, i32 } %199
}

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
