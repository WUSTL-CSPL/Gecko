; ModuleID = 'link_lib.cpp'
source_filename = "link_lib.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@target_funcs = dso_local global [1000 x i32] zeroinitializer, align 16
@buff = dso_local global [2 x [0 x [7 x i8*]]] zeroinitializer, align 8
@counters = dso_local global [2 x [0 x i32]] zeroinitializer, align 4
@replay_counters = dso_local global [2 x [0 x i32]] zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c" Checking Inter-CMPT \0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" Unknown Call \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_link_lib.cpp, i8* null }]

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
define dso_local void @cspl_data_replay(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_data_log(i8* %0, i32 %1, i32 %2, i32 %3) #5 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %13
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %14, i64 0, i64 %16
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %19
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i32], [0 x i32]* %20, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %24, 4048
  %26 = sdiv i32 %25, 512
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %4
  %32 = call noalias nonnull i8* @_Znam(i64 512) #7
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %35, i64 0, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], [0 x i32]* %41, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %45, 4048
  %47 = sdiv i32 %46, 512
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [7 x i8*], [7 x i8*]* %38, i64 0, i64 %48
  store i8* %32, i8** %49, align 8
  br label %50

50:                                               ; preds = %31, %4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %53, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, 4048
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %61, i64 0, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = srem i32 %67, 4048
  %69 = sdiv i32 %68, 512
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [7 x i8*], [7 x i8*]* %64, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %50
  %75 = call noalias nonnull i8* @_Znam(i64 512) #7
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %77
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %78, i64 0, i64 %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = srem i32 %84, 4048
  %86 = sdiv i32 %85, 512
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i8*], [7 x i8*]* %81, i64 0, i64 %87
  store i8* %75, i8** %88, align 8
  br label %89

89:                                               ; preds = %74, %50
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %121, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %11, align 1
  %100 = load i8, i8* %11, align 1
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %102
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %103, i64 0, i64 %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = srem i32 %109, 4048
  %111 = sdiv i32 %110, 512
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [7 x i8*], [7 x i8*]* %106, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = srem i32 %117, 512
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  store i8 %100, i8* %120, align 1
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %90, !llvm.loop !4

124:                                              ; preds = %90
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %127
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [0 x i32], [0 x i32]* %128, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %125
  store i32 %133, i32* %131, align 4
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #6

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_inter_cpt_transfer() #5 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1000 x i32], [1000 x i32]* @target_funcs, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %4, !llvm.loop !6

15:                                               ; preds = %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_intra_cpt_transfer() #4 {
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_unknown_ind_call() #5 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_bug_crash() #5 {
  %1 = alloca void ()*, align 8
  store void ()* inttoptr (i64 4660 to void ()*), void ()** %1, align 8
  %2 = load void ()*, void ()** %1, align 8
  call void %2()
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_intra_ind_call() #4 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_inter_ind_call() #4 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_inter() #4 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_global() #4 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_other() #4 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_intra() #4 {
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_link_lib.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 19b8368225dc9ec5a0da547eae48c10dae13522d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
