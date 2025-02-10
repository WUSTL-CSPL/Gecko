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
@count_cspl_data_replay = external dso_local global i32, align 4
@count_cspl_data_log = external dso_local global i32, align 4
@count_cspl_inter_cpt_transfer = external dso_local global i32, align 4
@count_cspl_intra_cpt_transfer = external dso_local global i32, align 4
@count_cspl_unknown_ind_call = external dso_local global i32, align 4
@count_cspl_bug_crash = external dso_local global i32, align 4
@count_cspl_intra_ind_call = external dso_local global i32, align 4
@count_cspl_inter_ind_call = external dso_local global i32, align 4
@count_cspl_data_inter = external dso_local global i32, align 4
@count_cspl_data_global = external dso_local global i32, align 4
@count_cspl_data_other = external dso_local global i32, align 4
@count_cspl_data_intra = external dso_local global i32, align 4
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
  %11 = load i32, i32* @count_cspl_data_replay, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @count_cspl_data_replay, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %15, %5
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
  %12 = load i32, i32* @count_cspl_data_log, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @count_cspl_data_log, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %15
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %16, i64 0, i64 %18
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %21
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], [0 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %26, 4048
  %28 = sdiv i32 %27, 512
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %4
  %34 = call noalias nonnull i8* @_Znam(i64 512) #7
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %36
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %37, i64 0, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i32], [0 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 4048
  %49 = sdiv i32 %48, 512
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i8*], [7 x i8*]* %40, i64 0, i64 %50
  store i8* %34, i8** %51, align 8
  br label %52

52:                                               ; preds = %33, %4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i32], [0 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %59, 4048
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %62
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %63, i64 0, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = srem i32 %69, 4048
  %71 = sdiv i32 %70, 512
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i8*], [7 x i8*]* %66, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %52
  %77 = call noalias nonnull i8* @_Znam(i64 512) #7
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %80, i64 0, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = srem i32 %86, 4048
  %88 = sdiv i32 %87, 512
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [7 x i8*], [7 x i8*]* %83, i64 0, i64 %89
  store i8* %77, i8** %90, align 8
  br label %91

91:                                               ; preds = %76, %52
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %11, align 1
  %102 = load i8, i8* %11, align 1
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x [0 x [7 x i8*]]], [2 x [0 x [7 x i8*]]]* @buff, i64 0, i64 %104
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [0 x [7 x i8*]], [0 x [7 x i8*]]* %105, i64 0, i64 %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = srem i32 %111, 4048
  %113 = sdiv i32 %112, 512
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i8*], [7 x i8*]* %108, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %117, %118
  %120 = srem i32 %119, 512
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  store i8 %102, i8* %122, align 1
  br label %123

123:                                              ; preds = %96
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %92, !llvm.loop !4

126:                                              ; preds = %92
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x [0 x i32]], [2 x [0 x i32]]* @counters, i64 0, i64 %129
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [0 x i32], [0 x i32]* %130, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %127
  store i32 %135, i32* %133, align 4
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_inter_cpt_transfer() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @count_cspl_inter_cpt_transfer, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @count_cspl_inter_cpt_transfer, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 1000
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1000 x i32], [1000 x i32]* @target_funcs, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %5, !llvm.loop !6

16:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_intra_cpt_transfer() #4 {
  %1 = load i32, i32* @count_cspl_intra_cpt_transfer, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_intra_cpt_transfer, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_unknown_ind_call() #4 {
  %1 = load i32, i32* @count_cspl_unknown_ind_call, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_unknown_ind_call, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @cspl_bug_crash() #5 {
  %1 = alloca void ()*, align 8
  %2 = load i32, i32* @count_cspl_bug_crash, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @count_cspl_bug_crash, align 4
  store void ()* inttoptr (i64 4660 to void ()*), void ()** %1, align 8
  %4 = load void ()*, void ()** %1, align 8
  call void %4()
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_intra_ind_call() #4 {
  %1 = load i32, i32* @count_cspl_intra_ind_call, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_intra_ind_call, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_inter_ind_call() #4 {
  %1 = load i32, i32* @count_cspl_inter_ind_call, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_inter_ind_call, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_inter() #4 {
  %1 = load i32, i32* @count_cspl_data_inter, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_data_inter, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_global() #4 {
  %1 = load i32, i32* @count_cspl_data_global, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_data_global, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_other() #4 {
  %1 = load i32, i32* @count_cspl_data_other, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_data_other, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @cspl_data_intra() #4 {
  %1 = load i32, i32* @count_cspl_data_intra, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count_cspl_data_intra, align 4
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
