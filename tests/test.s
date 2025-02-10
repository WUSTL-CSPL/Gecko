	.text
	.file	"test.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z4Afunv                        # -- Begin function _Z4Afunv
	.p2align	4, 0x90
	.type	_Z4Afunv,@function
_Z4Afunv:                               # @_Z4Afunv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z4Afunv, .Lfunc_end1-_Z4Afunv
	.cfi_endproc
                                        # -- End function
	.globl	_Z4Bfunv                        # -- Begin function _Z4Bfunv
	.p2align	4, 0x90
	.type	_Z4Bfunv,@function
_Z4Bfunv:                               # @_Z4Bfunv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z4Bfunv, .Lfunc_end2-_Z4Bfunv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI3_0:
	.quad	0x40b3880000000000              # double 5000
.LCPI3_1:
	.quad	0x40bd4c0000000000              # double 7500
.LCPI3_2:
	.quad	0x40a7700000000000              # double 3000
.LCPI3_3:
	.quad	0x408f400000000000              # double 1000
.LCPI3_4:
	.quad	0x409f400000000000              # double 2000
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZN4BankC2Ev
	leaq	-72(%rbp), %rdi
	movq	%rdi, -184(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-184(%rbp), %rdx                # 8-byte Reload
.Ltmp0:
	movl	$.L.str.1, %esi
	leaq	-64(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp1:
	jmp	.LBB3_1
.LBB3_1:                                # %invoke.cont
.Ltmp3:
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
.Ltmp4:
	jmp	.LBB3_2
.LBB3_2:                                # %invoke.cont3
	leaq	-64(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-128(%rbp), %rdi
	movq	%rdi, -192(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-192(%rbp), %rdx                # 8-byte Reload
.Ltmp6:
	movl	$.L.str.2, %esi
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp7:
	jmp	.LBB3_3
.LBB3_3:                                # %invoke.cont7
.Ltmp9:
	leaq	-32(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movsd	.LCPI3_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
.Ltmp10:
	jmp	.LBB3_4
.LBB3_4:                                # %invoke.cont9
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-128(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-168(%rbp), %rdi
	movq	%rdi, -200(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-200(%rbp), %rdx                # 8-byte Reload
.Ltmp12:
	movl	$.L.str.3, %esi
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp13:
	jmp	.LBB3_5
.LBB3_5:                                # %invoke.cont15
.Ltmp15:
	leaq	-32(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movsd	.LCPI3_2(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
.Ltmp16:
	jmp	.LBB3_6
.LBB3_6:                                # %invoke.cont17
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-168(%rbp), %rdi
	callq	_ZNSaIcED1Ev
.Ltmp18:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp19:
	jmp	.LBB3_7
.LBB3_7:                                # %invoke.cont21
.Ltmp20:
	leaq	-32(%rbp), %rdi
	callq	_ZNK4Bank18displayAllAccountsEv
.Ltmp21:
	jmp	.LBB3_8
.LBB3_8:                                # %invoke.cont22
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EEixEm
	movq	%rax, %rdi
.Ltmp22:
	movsd	.LCPI3_3(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	_ZN11BankAccount7depositEd
.Ltmp23:
	jmp	.LBB3_9
.LBB3_9:                                # %invoke.cont24
	leaq	-32(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EEixEm
	movq	%rax, %rdi
.Ltmp24:
	movsd	.LCPI3_4(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	_ZN11BankAccount8withdrawEd
.Ltmp25:
	jmp	.LBB3_10
.LBB3_10:                               # %invoke.cont27
	cmpl	$8, ggbol
	jle	.LBB3_22
# %bb.11:                               # %if.then
	movabsq	$_Z4Afunv, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB3_23
.LBB3_12:                               # %lpad
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	jmp	.LBB3_14
.LBB3_13:                               # %lpad2
.Ltmp5:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB3_14:                               # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB3_27
.LBB3_15:                               # %lpad6
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %lpad8
.Ltmp11:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB3_17:                               # %ehcleanup11
	leaq	-128(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB3_27
.LBB3_18:                               # %lpad14
.Ltmp14:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %lpad16
.Ltmp17:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB3_20:                               # %ehcleanup19
	leaq	-168(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB3_27
.LBB3_21:                               # %lpad20
.Ltmp32:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	jmp	.LBB3_27
.LBB3_22:                               # %if.else
	movabsq	$_Z4Bfunv, %rax
	movq	%rax, -176(%rbp)
.LBB3_23:                               # %if.end
	movq	-176(%rbp), %rax
.Ltmp26:
	callq	*%rax
.Ltmp27:
	jmp	.LBB3_24
.LBB3_24:                               # %invoke.cont28
.Ltmp28:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.5, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp29:
	jmp	.LBB3_25
.LBB3_25:                               # %invoke.cont29
.Ltmp30:
	leaq	-32(%rbp), %rdi
	callq	_ZNK4Bank18displayAllAccountsEv
.Ltmp31:
	jmp	.LBB3_26
.LBB3_26:                               # %invoke.cont31
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZN4BankD2Ev
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_27:                               # %ehcleanup32
	.cfi_def_cfa %rbp, 16
	leaq	-32(%rbp), %rdi
	callq	_ZN4BankD2Ev
# %bb.28:                               # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp31-.Ltmp18                #   Call between .Ltmp18 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp31            #   Call between .Ltmp31 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN4BankC2Ev,"axG",@progbits,_ZN4BankC2Ev,comdat
	.weak	_ZN4BankC2Ev                    # -- Begin function _ZN4BankC2Ev
	.p2align	4, 0x90
	.type	_ZN4BankC2Ev,@function
_ZN4BankC2Ev:                           # @_ZN4BankC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN4BankC2Ev, .Lfunc_end4-_ZN4BankC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,"axG",@progbits,_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,comdat
	.weak	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd # -- Begin function _ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.p2align	4, 0x90
	.type	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,@function
_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd: # @_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rdi
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	callq	_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-88(%rbp), %rsi                 # 8-byte Reload
.Ltmp33:
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_
.Ltmp34:
	jmp	.LBB5_1
.LBB5_1:                                # %invoke.cont
	leaq	-64(%rbp), %rdi
	callq	_ZN11BankAccountD2Ev
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:                                # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp35:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -72(%rbp)
	movl	%eax, -76(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZN11BankAccountD2Ev
# %bb.3:                                # %eh.resume
	movq	-72(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd, .Lfunc_end5-_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.cfi_endproc
	.section	.gcc_except_table._ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,"aG",@progbits,_ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,comdat
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp34            #   Call between .Ltmp34 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK4Bank18displayAllAccountsEv,"axG",@progbits,_ZNK4Bank18displayAllAccountsEv,comdat
	.weak	_ZNK4Bank18displayAllAccountsEv # -- Begin function _ZNK4Bank18displayAllAccountsEv
	.p2align	4, 0x90
	.type	_ZNK4Bank18displayAllAccountsEv,@function
_ZNK4Bank18displayAllAccountsEv:        # @_ZNK4Bank18displayAllAccountsEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	$1, %al
	jne	.LBB6_2
	jmp	.LBB6_4
.LBB6_2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_ZNK11BankAccount7displayEv
	movabsq	$_ZSt4cout, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNK4Bank18displayAllAccountsEv, .Lfunc_end6-_ZNK4Bank18displayAllAccountsEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EEixEm # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EEixEm,@function
_ZNSt6vectorI11BankAccountSaIS0_EEixEm: # @_ZNSt6vectorI11BankAccountSaIS0_EEixEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	imulq	$40, -16(%rbp), %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EEixEm, .Lfunc_end7-_ZNSt6vectorI11BankAccountSaIS0_EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccount7depositEd,"axG",@progbits,_ZN11BankAccount7depositEd,comdat
	.weak	_ZN11BankAccount7depositEd      # -- Begin function _ZN11BankAccount7depositEd
	.p2align	4, 0x90
	.type	_ZN11BankAccount7depositEd,@function
_ZN11BankAccount7depositEd:             # @_ZN11BankAccount7depositEd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	addsd	32(%rax), %xmm0
	movsd	%xmm0, 32(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN11BankAccount7depositEd, .Lfunc_end8-_ZN11BankAccount7depositEd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccount8withdrawEd,"axG",@progbits,_ZN11BankAccount8withdrawEd,comdat
	.weak	_ZN11BankAccount8withdrawEd     # -- Begin function _ZN11BankAccount8withdrawEd
	.p2align	4, 0x90
	.type	_ZN11BankAccount8withdrawEd,@function
_ZN11BankAccount8withdrawEd:            # @_ZN11BankAccount8withdrawEd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB9_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movsd	-16(%rbp), %xmm1                # xmm1 = mem[0],zero
	cvtsi2sdl	ggbol, %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rax)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.9, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
.LBB9_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN11BankAccount8withdrawEd, .Lfunc_end9-_ZN11BankAccount8withdrawEd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4BankD2Ev,"axG",@progbits,_ZN4BankD2Ev,comdat
	.weak	_ZN4BankD2Ev                    # -- Begin function _ZN4BankD2Ev
	.p2align	4, 0x90
	.type	_ZN4BankD2Ev,@function
_ZN4BankD2Ev:                           # @_ZN4BankD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZN4BankD2Ev, .Lfunc_end10-_ZN4BankD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev,@function
_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev: # @_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev, .Lfunc_end11-_ZNSt6vectorI11BankAccountSaIS0_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev, .Lfunc_end12-_ZNSt12_Vector_baseI11BankAccountSaIS0_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaI11BankAccountEC2Ev
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev, .Lfunc_end13-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI11BankAccountEC2Ev,"axG",@progbits,_ZNSaI11BankAccountEC2Ev,comdat
	.weak	_ZNSaI11BankAccountEC2Ev        # -- Begin function _ZNSaI11BankAccountEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaI11BankAccountEC2Ev,@function
_ZNSaI11BankAccountEC2Ev:               # @_ZNSaI11BankAccountEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZNSaI11BankAccountEC2Ev, .Lfunc_end14-_ZNSaI11BankAccountEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev, .Lfunc_end15-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev, .Lfunc_end16-_ZN9__gnu_cxx13new_allocatorI11BankAccountEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,"axG",@progbits,_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,comdat
	.weak	_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd # -- Begin function _ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.p2align	4, 0x90
	.type	_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,@function
_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd: # @_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd, .Lfunc_end17-_ZN11BankAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_ # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_,@function
_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_: # @_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.LBB18_2
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$40, %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE3endEv
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.LBB18_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_, .Lfunc_end18-_ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccountD2Ev,"axG",@progbits,_ZN11BankAccountD2Ev,comdat
	.weak	_ZN11BankAccountD2Ev            # -- Begin function _ZN11BankAccountD2Ev
	.p2align	4, 0x90
	.type	_ZN11BankAccountD2Ev,@function
_ZN11BankAccountD2Ev:                   # @_ZN11BankAccountD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZN11BankAccountD2Ev, .Lfunc_end19-_ZN11BankAccountD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_: # @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, .Lfunc_end20-_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,@function
_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_: # @_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	movl	$.L.str.6, %edx
	movl	$1, %esi
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -48(%rbp)
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv
	movq	%rax, -64(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rsi
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
.Ltmp36:
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
.Ltmp37:
	jmp	.LBB21_1
.LBB21_1:                               # %invoke.cont
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -80(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -80(%rbp)
	jmp	.LBB21_11
.LBB21_2:                               # %lpad
.Ltmp38:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -88(%rbp)
	movl	%eax, -92(%rbp)
# %bb.3:                                # %catch
	movq	-88(%rbp), %rdi
	callq	__cxa_begin_catch
	cmpq	$0, -80(%rbp)
	jne	.LBB21_5
# %bb.4:                                # %if.then
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-72(%rbp), %rsi
	imulq	$40, -56(%rbp), %rax
	addq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	jmp	.LBB21_8
.LBB21_5:                               # %if.else
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-176(%rbp), %rdi                # 8-byte Reload
	movq	-168(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
.Ltmp39:
	callq	_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
.Ltmp40:
	jmp	.LBB21_6
.LBB21_6:                               # %invoke.cont19
	jmp	.LBB21_8
.LBB21_7:                               # %lpad18
.Ltmp45:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -88(%rbp)
	movl	%eax, -92(%rbp)
.Ltmp46:
	callq	__cxa_end_catch
.Ltmp47:
	jmp	.LBB21_10
.LBB21_8:                               # %if.end
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
.Ltmp41:
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
.Ltmp42:
	jmp	.LBB21_9
.LBB21_9:                               # %invoke.cont20
.Ltmp43:
	callq	__cxa_rethrow
.Ltmp44:
	jmp	.LBB21_14
.LBB21_10:                              # %invoke.cont21
	jmp	.LBB21_12
.LBB21_11:                              # %try.cont
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rdx
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-72(%rbp), %rcx
	imulq	$40, -32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_12:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB21_13:                              # %terminate.lpad
.Ltmp48:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.LBB21_14:                              # %unreachable
.Lfunc_end21:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .Lfunc_end21-_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"aG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.p2align	2
GCC_except_table21:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp37                #   Call between .Ltmp37 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp44-.Ltmp41                #   Call between .Ltmp41 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end21-.Ltmp44           #   Call between .Ltmp44 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE3endEv # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE3endEv,@function
_ZNSt6vectorI11BankAccountSaIS0_EE3endEv: # @_ZNSt6vectorI11BankAccountSaIS0_EE3endEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE3endEv, .Lfunc_end22-_ZNSt6vectorI11BankAccountSaIS0_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZN11BankAccountC2ERKS_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_, .Lfunc_end23-_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE # -- Begin function _ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE,@function
_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE: # @_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE, .Lfunc_end24-_ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccountC2ERKS_,"axG",@progbits,_ZN11BankAccountC2ERKS_,comdat
	.weak	_ZN11BankAccountC2ERKS_         # -- Begin function _ZN11BankAccountC2ERKS_
	.p2align	4, 0x90
	.type	_ZN11BankAccountC2ERKS_,@function
_ZN11BankAccountC2ERKS_:                # @_ZN11BankAccountC2ERKS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZN11BankAccountC2ERKS_, .Lfunc_end25-_ZN11BankAccountC2ERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB26_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc
.LBB26_2:                               # %if.end
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB26_4
# %bb.3:                                # %lor.lhs.false
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB26_5
.LBB26_4:                               # %cond.true
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB26_6:                               # %cond.end
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc, .Lfunc_end26-_ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ # -- Begin function _ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,@function
_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .Lfunc_end27-_ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv,@function
_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv: # @_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv, .Lfunc_end28-_ZNSt6vectorI11BankAccountSaIS0_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	cmpq	$0, -16(%rbp)
	je	.LBB29_2
# %bb.1:                                # %cond.true
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB29_3
.LBB29_2:                               # %cond.false
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB29_3
.LBB29_3:                               # %cond.end
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm, .Lfunc_end29-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,@function
_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_: # @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .Lfunc_end30-_ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end31-_ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end32-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_ # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_,@function
_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_: # @_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_, .Lfunc_end33-_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E # -- Begin function _ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E,@function
_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E: # @_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIP11BankAccountEvT_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E, .Lfunc_end34-_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	cmpq	$0, -16(%rbp)
	je	.LBB35_2
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m
.LBB35_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m, .Lfunc_end35-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end36:
	.size	__clang_call_terminate, .Lfunc_end36-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv # -- Begin function _ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv,@function
_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv: # @_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv, .Lfunc_end37-_ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv # -- Begin function _ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv: # @_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$40, %ecx
	cqto
	idivq	%rcx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv, .Lfunc_end38-_ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB39_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_3
.LBB39_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end39-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_ # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_,@function
_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_: # @_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$230584300921369395, %rax       # imm = 0x333333333333333
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_
	movq	%rax, -24(%rbp)
.Ltmp49:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp50:
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB40_1
.LBB40_1:                               # %invoke.cont
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB40_2:                               # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp51:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end40:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_, .Lfunc_end40-_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_,"aG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_,comdat
	.p2align	2
GCC_except_table40:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin3          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end41-_ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_ # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_,@function
_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_: # @_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_, .Lfunc_end42-_ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB43_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB43_3
.LBB43_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB43_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end43-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$230584300921369395, %rax       # imm = 0x333333333333333
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv, .Lfunc_end44-_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Lfunc_end45-_ZN9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m,@function
_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m: # @_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m, .Lfunc_end46-_ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB47_2
# %bb.1:                                # %if.then
	callq	_ZSt17__throw_bad_allocv
.LBB47_2:                               # %if.end
	imulq	$40, -16(%rbp), %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv, .Lfunc_end47-_ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,@function
_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE: # @_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .Lfunc_end48-_ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_ # -- Begin function _ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIP11BankAccountET_S2_
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIP11BankAccountET_S2_
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIP11BankAccountET_S2_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	callq	_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_, .Lfunc_end49-_ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_ # -- Begin function _ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB50_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	_ZSt11__addressofI11BankAccountEPT_RS1_
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofI11BankAccountEPT_RS1_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	callq	_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB50_1
.LBB50_4:                               # %for.end
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_, .Lfunc_end50-_ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIP11BankAccountET_S2_,"axG",@progbits,_ZSt12__niter_baseIP11BankAccountET_S2_,comdat
	.weak	_ZSt12__niter_baseIP11BankAccountET_S2_ # -- Begin function _ZSt12__niter_baseIP11BankAccountET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIP11BankAccountET_S2_,@function
_ZSt12__niter_baseIP11BankAccountET_S2_: # @_ZSt12__niter_baseIP11BankAccountET_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZSt12__niter_baseIP11BankAccountET_S2_, .Lfunc_end51-_ZSt12__niter_baseIP11BankAccountET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_ # -- Begin function _ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_
	.p2align	4, 0x90
	.type	_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_,@function
_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_: # @_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt11__addressofI11BankAccountEPT_RS1_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_, .Lfunc_end52-_ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofI11BankAccountEPT_RS1_,"axG",@progbits,_ZSt11__addressofI11BankAccountEPT_RS1_,comdat
	.weak	_ZSt11__addressofI11BankAccountEPT_RS1_ # -- Begin function _ZSt11__addressofI11BankAccountEPT_RS1_
	.p2align	4, 0x90
	.type	_ZSt11__addressofI11BankAccountEPT_RS1_,@function
_ZSt11__addressofI11BankAccountEPT_RS1_: # @_ZSt11__addressofI11BankAccountEPT_RS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZSt11__addressofI11BankAccountEPT_RS1_, .Lfunc_end53-_ZSt11__addressofI11BankAccountEPT_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_: # @_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, .Lfunc_end54-_ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end55-_ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZN11BankAccountC2EOS_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_, .Lfunc_end56-_ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE # -- Begin function _ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE,@function
_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE: # @_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE, .Lfunc_end57-_ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11BankAccountC2EOS_,"axG",@progbits,_ZN11BankAccountC2EOS_,comdat
	.weak	_ZN11BankAccountC2EOS_          # -- Begin function _ZN11BankAccountC2EOS_
	.p2align	4, 0x90
	.type	_ZN11BankAccountC2EOS_,@function
_ZN11BankAccountC2EOS_:                 # @_ZN11BankAccountC2EOS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZN11BankAccountC2EOS_, .Lfunc_end58-_ZN11BankAccountC2EOS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZN11BankAccountD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_, .Lfunc_end59-_ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP11BankAccountEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP11BankAccountEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP11BankAccountEvT_S2_ # -- Begin function _ZSt8_DestroyIP11BankAccountEvT_S2_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP11BankAccountEvT_S2_,@function
_ZSt8_DestroyIP11BankAccountEvT_S2_:    # @_ZSt8_DestroyIP11BankAccountEvT_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZSt8_DestroyIP11BankAccountEvT_S2_, .Lfunc_end60-_ZSt8_DestroyIP11BankAccountEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB61_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB61_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofI11BankAccountEPT_RS1_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyI11BankAccountEvPT_
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB61_1
.LBB61_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_, .Lfunc_end61-_ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyI11BankAccountEvPT_,"axG",@progbits,_ZSt8_DestroyI11BankAccountEvPT_,comdat
	.weak	_ZSt8_DestroyI11BankAccountEvPT_ # -- Begin function _ZSt8_DestroyI11BankAccountEvPT_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyI11BankAccountEvPT_,@function
_ZSt8_DestroyI11BankAccountEvPT_:       # @_ZSt8_DestroyI11BankAccountEvPT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN11BankAccountD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZSt8_DestroyI11BankAccountEvPT_, .Lfunc_end62-_ZSt8_DestroyI11BankAccountEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m # -- Begin function _ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m,@function
_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m: # @_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m, .Lfunc_end63-_ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m, .Lfunc_end64-_ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv,comdat
	.weak	_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv # -- Begin function _ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv,@function
_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv: # @_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv, .Lfunc_end65-_ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI11BankAccountSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv,comdat
	.weak	_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv # -- Begin function _ZNKSt6vectorI11BankAccountSaIS0_EE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv,@function
_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv: # @_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv, .Lfunc_end66-_ZNKSt6vectorI11BankAccountSaIS0_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ # -- Begin function _ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,@function
_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_: # @_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .Lfunc_end67-_ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv, .Lfunc_end68-_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11BankAccount7displayEv,"axG",@progbits,_ZNK11BankAccount7displayEv,comdat
	.weak	_ZNK11BankAccount7displayEv     # -- Begin function _ZNK11BankAccount7displayEv
	.p2align	4, 0x90
	.type	_ZNK11BankAccount7displayEv,@function
_ZNK11BankAccount7displayEv:            # @_ZNK11BankAccount7displayEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.7, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.8, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNK11BankAccount7displayEv, .Lfunc_end69-_ZNK11BankAccount7displayEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$40, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv, .Lfunc_end70-_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_,@function
_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_: # @_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_, .Lfunc_end71-_ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end72-_ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI11BankAccountSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI11BankAccountSaIS0_EED2Ev # -- Begin function _ZNSt6vectorI11BankAccountSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI11BankAccountSaIS0_EED2Ev,@function
_ZNSt6vectorI11BankAccountSaIS0_EED2Ev: # @_ZNSt6vectorI11BankAccountSaIS0_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
.Ltmp52:
	callq	_ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
.Ltmp53:
	jmp	.LBB73_1
.LBB73_1:                               # %invoke.cont
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB73_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp54:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end73:
	.size	_ZNSt6vectorI11BankAccountSaIS0_EED2Ev, .Lfunc_end73-_ZNSt6vectorI11BankAccountSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorI11BankAccountSaIS0_EED2Ev,"aG",@progbits,_ZNSt6vectorI11BankAccountSaIS0_EED2Ev,comdat
	.p2align	2
GCC_except_table73:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin4          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax     # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rax, %rdx
.Ltmp55:
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
.Ltmp56:
	jmp	.LBB74_1
.LBB74_1:                               # %invoke.cont
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB74_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp57:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end74:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev, .Lfunc_end74-_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EED2Ev,comdat
	.p2align	2
GCC_except_table74:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp55-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin5          #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaI11BankAccountED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev, .Lfunc_end75-_ZNSt12_Vector_baseI11BankAccountSaIS0_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI11BankAccountED2Ev,"axG",@progbits,_ZNSaI11BankAccountED2Ev,comdat
	.weak	_ZNSaI11BankAccountED2Ev        # -- Begin function _ZNSaI11BankAccountED2Ev
	.p2align	4, 0x90
	.type	_ZNSaI11BankAccountED2Ev,@function
_ZNSaI11BankAccountED2Ev:               # @_ZNSaI11BankAccountED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZNSaI11BankAccountED2Ev, .Lfunc_end76-_ZNSaI11BankAccountED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev: # @_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev, .Lfunc_end77-_ZN9__gnu_cxx13new_allocatorI11BankAccountED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_test.cpp
	.type	_GLOBAL__sub_I_test.cpp,@function
_GLOBAL__sub_I_test.cpp:                # @_GLOBAL__sub_I_test.cpp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_GLOBAL__sub_I_test.cpp, .Lfunc_end78-_GLOBAL__sub_I_test.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	ggbol,@object                   # @ggbol
	.data
	.globl	ggbol
	.p2align	2
ggbol:
	.long	9                               # 0x9
	.size	ggbol, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dssd "
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"John Doe"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Jane Smith"
	.size	.L.str.2, 11

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Bob Johnson"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Bank Accounts:\n"
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nUpdated Bank Accounts:\n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Account Owner: "
	.size	.L.str.7, 16

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Account Balance: $"
	.size	.L.str.8, 19

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Insufficient funds!"
	.size	.L.str.9, 20

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test.cpp
	.ident	"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z4Afunv
	.addrsig_sym _Z4Bfunv
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZN4Bank10addAccountERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNK4Bank18displayAllAccountsEv
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EEixEm
	.addrsig_sym _ZN11BankAccount7depositEd
	.addrsig_sym _ZN11BankAccount8withdrawEd
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE9push_backERKS0_
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE3endEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardIRK11BankAccountEOT_RNSt16remove_referenceIS3_E4typeE
	.addrsig_sym _ZNKSt6vectorI11BankAccountSaIS0_EE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIP11BankAccountSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE5beginEv
	.addrsig_sym _ZNSt12_Vector_baseI11BankAccountSaIS0_EE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIP11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _ZNSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE7destroyIS0_EEvRS1_PT_
	.addrsig_sym _ZSt8_DestroyIP11BankAccountS0_EvT_S2_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseI11BankAccountSaIS0_EE13_M_deallocateEPS0_m
	.addrsig_sym __cxa_rethrow
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNKSt6vectorI11BankAccountSaIS0_EE8max_sizeEv
	.addrsig_sym _ZNKSt6vectorI11BankAccountSaIS0_EE4sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE11_S_max_sizeERKS1_
	.addrsig_sym _ZNKSt12_Vector_baseI11BankAccountSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE8max_sizeERKS1_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorI11BankAccountE8max_sizeEv
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE8allocateERS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI11BankAccountE8allocateEmPKv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt6vectorI11BankAccountSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IP11BankAccountS1_SaIS0_EET0_T_S4_S3_RT1_
	.addrsig_sym _ZSt12__niter_baseIP11BankAccountET_S2_
	.addrsig_sym _ZSt19__relocate_object_aI11BankAccountS0_SaIS0_EEvPT_PT0_RT1_
	.addrsig_sym _ZSt11__addressofI11BankAccountEPT_RS1_
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.addrsig_sym _ZSt4moveIR11BankAccountEONSt16remove_referenceIT_E4typeEOS3_
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI11BankAccountE9constructIS1_JS1_EEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardI11BankAccountEOT_RNSt16remove_referenceIS1_E4typeE
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI11BankAccountE7destroyIS1_EEvPT_
	.addrsig_sym _ZSt8_DestroyIP11BankAccountEvT_S2_
	.addrsig_sym _ZNSt12_Destroy_auxILb0EE9__destroyIP11BankAccountEEvT_S4_
	.addrsig_sym _ZSt8_DestroyI11BankAccountEvPT_
	.addrsig_sym _ZNSt16allocator_traitsISaI11BankAccountEE10deallocateERS1_PS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI11BankAccountE10deallocateEPS1_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt6vectorI11BankAccountSaIS0_EE5beginEv
	.addrsig_sym _ZNKSt6vectorI11BankAccountSaIS0_EE3endEv
	.addrsig_sym _ZN9__gnu_cxxneIPK11BankAccountSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEdeEv
	.addrsig_sym _ZNK11BankAccount7displayEv
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEEppEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPK11BankAccountSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _GLOBAL__sub_I_test.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym ggbol
	.addrsig_sym _ZSt4cout
