; ModuleID = 'your_bitcode.bc'
source_filename = "dfi_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.ros::console::LogLocation" = type { i8, i8, i32, i8* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.ros::console::FilterBase" = type { i32 (...)** }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@count = dso_local global i32 0, align 4
@_ZN3ros7console13g_initializedE = external dso_local global i8, align 1
@_ZZ15dfi_store_checkE33__rosconsole_define_location__loc = internal global %"struct.ros::console::LogLocation" { i8 0, i8 0, i32 5, i8* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ros.unknown_package\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dfi_lib.c\00", align 1
@__PRETTY_FUNCTION__.dfi_store_check = private unnamed_addr constant [26 x i8] c"void dfi_store_check(int)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"THIs is nnnn %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"fwfrwefwerfwnnn %d\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_dfi_lib.c, i8* null }]

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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @dfi_store_check(i32 %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @count, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* @count, align 4
  %10 = load i32, i32* @count, align 4
  %11 = urem i32 %10, 100000
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  store i32 0, i32* @count, align 4
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  %16 = load i8, i8* @_ZN3ros7console13g_initializedE, align 1
  %17 = trunc i8 %16 to i1
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @_ZN3ros7console10initializeEv()
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %20
  %22 = load i8, i8* getelementptr inbounds (%"struct.ros::console::LogLocation", %"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 0, i32 0), align 8
  %23 = trunc i8 %22 to i1
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4)
          to label %26 unwind label %28

26:                                               ; preds = %25
  invoke void @_ZN3ros7console21initializeLogLocationEPNS0_11LogLocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6levels5LevelE(%"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3, i32 2)
          to label %27 unwind label %32

27:                                               ; preds = %26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  br label %37

28:                                               ; preds = %25
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %26
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %5, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3) #3
  br label %36

36:                                               ; preds = %32, %28
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #3
  br label %58

37:                                               ; preds = %27, %21
  %38 = load i32, i32* getelementptr inbounds (%"struct.ros::console::LogLocation", %"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 0, i32 2), align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @_ZN3ros7console19setLogLocationLevelEPNS0_11LogLocationENS0_6levels5LevelE(%"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 2)
  call void @_ZN3ros7console23checkLogLocationEnabledEPNS0_11LogLocationE(%"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc)
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i8, i8* getelementptr inbounds (%"struct.ros::console::LogLocation", %"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 0, i32 1), align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i1 [ false, %41 ], [ true, %44 ]
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %7, align 1
  %48 = load i8, i8* %7, align 1
  %49 = trunc i8 %48 to i1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** getelementptr inbounds (%"struct.ros::console::LogLocation", %"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 0, i32 3), align 8
  %52 = load i32, i32* getelementptr inbounds (%"struct.ros::console::LogLocation", %"struct.ros::console::LogLocation"* @_ZZ15dfi_store_checkE33__rosconsole_define_location__loc, i32 0, i32 2), align 4
  call void (%"class.ros::console::FilterBase"*, i8*, i32, i8*, i32, i8*, i8*, ...) @_ZN3ros7console5printEPNS0_10FilterBaseEPvNS0_6levels5LevelEPKciS7_S7_z(%"class.ros::console::FilterBase"* null, i8* %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.dfi_store_check, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @count, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %1
  ret void

58:                                               ; preds = %36
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = insertvalue { i8*, i32 } undef, i8* %59, 0
  %62 = insertvalue { i8*, i32 } %61, i32 %60, 1
  resume { i8*, i32 } %62
}

declare dso_local void @_ZN3ros7console10initializeEv() #1

declare dso_local void @_ZN3ros7console21initializeLogLocationEPNS0_11LogLocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6levels5LevelE(%"struct.ros::console::LogLocation"*, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i32) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8*, %"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare dso_local void @_ZN3ros7console19setLogLocationLevelEPNS0_11LogLocationENS0_6levels5LevelE(%"struct.ros::console::LogLocation"*, i32) #1

declare dso_local void @_ZN3ros7console23checkLogLocationEnabledEPNS0_11LogLocationE(%"struct.ros::console::LogLocation"*) #1

declare dso_local void @_ZN3ros7console5printEPNS0_10FilterBaseEPvNS0_6levels5LevelEPKciS7_S7_z(%"class.ros::console::FilterBase"*, i8*, i32, i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @dfi_load_check(i32 %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @count, align 4
  %4 = add i32 %3, 1
  store i32 %4, i32* @count, align 4
  %5 = load i32, i32* @count, align 4
  %6 = urem i32 %5, 100000
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store i32 0, i32* @count, align 4
  %9 = load i32, i32* @count, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_dfi_lib.c() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
