	.file	"prueba.cpp"
# GNU C++11 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -std=c++11 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1354:
	.cfi_startproc
	endbr64	
# /usr/include/c++/11/bits/locale_facets.h:1087:       do_widen(char __c) const
	movl	%esi, %eax	# tmp87, __c
# /usr/include/c++/11/bits/locale_facets.h:1088:       { return __c; }
	ret	
	.cfi_endproc
.LFE1354:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB2992:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp94, .omp_data_i
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# prueba.cpp:56: #pragma omp parallel
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, 8(%rsp)	# tmp96, D.56494
	xorl	%eax, %eax	# tmp96
	call	GOMP_single_start@PLT	#
	testb	%al, %al	# tmp95
	jne	.L4	#,
.L6:
	movq	8(%rsp), %rax	# D.56494, tmp97
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	jne	.L9	#,
# prueba.cpp:56: #pragma omp parallel
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	GOMP_barrier@PLT	#
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movq	%rsp, %rbp	#, tmp88
# prueba.cpp:60:         #pragma omp task shared(variable)
	movq	%rbx, (%rsp)	# .omp_data_i, MEM[(struct .omp_data_s.2 *)_15].variable
	movl	$1, %r9d	#,
	xorl	%edx, %edx	#
	pushq	$0	#
	.cfi_def_cfa_offset 56
	movl	$8, %r8d	#,
	movl	$8, %ecx	#,
	movq	%rbp, %rsi	# tmp88,
	pushq	$0	#
	.cfi_def_cfa_offset 64
	leaq	main._omp_fn.1(%rip), %rdi	#, tmp89
	pushq	$0	#
	.cfi_def_cfa_offset 72
	pushq	$0	#
	.cfi_def_cfa_offset 80
	call	GOMP_task@PLT	#
# prueba.cpp:68:         #pragma omp task shared(variable)
	movl	(%rbx), %eax	# *.omp_data_i_5(D).variable, *.omp_data_i_5(D).variable
	movl	$1, %r9d	#,
	xorl	%edx, %edx	#
	movl	$4, %r8d	#,
	movl	$4, %ecx	#,
	movq	%rbp, %rsi	# tmp88,
	movl	%eax, 32(%rsp)	# *.omp_data_i_5(D).variable, MEM[(struct .omp_data_s.3 *)_15].variable
	movq	%rbp, %rsp	# tmp88,
	.cfi_def_cfa_offset 48
	leaq	main._omp_fn.2(%rip), %rdi	#, tmp92
	pushq	$0	#
	.cfi_def_cfa_offset 56
	pushq	$0	#
	.cfi_def_cfa_offset 64
	pushq	$0	#
	.cfi_def_cfa_offset 72
	pushq	$0	#
	.cfi_def_cfa_offset 80
	call	GOMP_task@PLT	#
	movq	%rbp, %rsp	# tmp88,
	.cfi_def_cfa_offset 48
	jmp	.L6	#
.L9:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE2992:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.text._ZNSt7__cxx114listIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx114listIiSaIiEED2Ev
	.type	_ZNSt7__cxx114listIiSaIiEED2Ev, @function
_ZNSt7__cxx114listIiSaIiEED2Ev:
.LFB2989:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11/bits/list.tcc:70:       __detail::_List_node_base* __cur = _M_impl._M_node._M_next;
	movq	(%rdi), %rbx	# MEM[(struct _List_base *)this_2(D)]._M_impl._M_node.D.38287._M_next, __cur
# /usr/include/c++/11/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	cmpq	%rbx, %rdi	# __cur, this
	je	.L10	#,
	movq	%rdi, %rbp	# tmp86, this
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rbx, %rdi	# __cur, __cur
# /usr/include/c++/11/bits/list.tcc:74: 	  __cur = __tmp->_M_next;
	movq	(%rbx), %rbx	# MEM[(struct _Node *)__cur_14].D.55129._M_next, __cur
# /usr/include/c++/11/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPv@PLT	#
# /usr/include/c++/11/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	cmpq	%rbx, %rbp	# __cur, this
	jne	.L12	#,
.L10:
# /usr/include/c++/11/bits/stl_list.h:828:       ~list() = default;
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE2989:
	.size	_ZNSt7__cxx114listIiSaIiEED2Ev, .-_ZNSt7__cxx114listIiSaIiEED2Ev
	.weak	_ZNSt7__cxx114listIiSaIiEED1Ev
	.set	_ZNSt7__cxx114listIiSaIiEED1Ev,_ZNSt7__cxx114listIiSaIiEED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"tid1:"
	.text
	.p2align 4
	.type	main._omp_fn.1, @function
main._omp_fn.1:
.LFB2993:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2993
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r12	#, tmp100
# prueba.cpp:60:         #pragma omp task shared(variable)
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# prueba.cpp:60:         #pragma omp task shared(variable)
	movq	%rdi, %rbx	# tmp107, .omp_data_i
# prueba.cpp:62:             int tid = omp_get_thread_num();
	call	omp_get_thread_num@PLT	#
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r12, %rdi	# tmp100,
	movl	$5, %edx	#,
	leaq	.LC0(%rip), %rsi	#, tmp99
# prueba.cpp:62:             int tid = omp_get_thread_num();
	movl	%eax, %ebp	# tmp108, tid
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# prueba.cpp:63:             cout << "tid1:" << tid << endl;
	movl	%ebp, %esi	# tid,
	movq	%r12, %rdi	# tmp100,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rbp	# tmp109, _6
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	# *_6._vptr.basic_ostream, *_6._vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_11 + -24B], MEM[(long int *)_11 + -24B]
	movq	240(%rbp,%rax), %r12	# MEM[(const struct __ctype_type * *)_14 + 240B], _19
# /usr/include/c++/11/bits/basic_ios.h:49:       if (!__f)
	testq	%r12, %r12	# _19
	je	.L21	#,
# /usr/include/c++/11/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r12)	#, MEM[(const struct ctype *)_19]._M_widen_ok
	je	.L17	#,
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%r12), %esi	# MEM[(const struct ctype *)_19]._M_widen[10], _18
.L18:
	movq	%rbp, %rdi	# _6,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp111, _17
# /usr/include/c++/11/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# prueba.cpp:65:             variable = 17;
	movq	(%rbx), %rax	# *.omp_data_i_7(D).variable, *.omp_data_i_7(D).variable
	movl	$17, (%rax)	#, *_8
# prueba.cpp:60:         #pragma omp task shared(variable)
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
# /usr/include/c++/11/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r12, %rdi	# _19,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%r12), %rax	# MEM[(const struct ctype *)_19].D.31106._vptr.facet, MEM[(const struct ctype *)_19].D.31106._vptr.facet
	movl	$10, %esi	#, _18
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp105
	movq	48(%rax), %rax	# MEM[(int (*) () *)_34 + 48B], _35
	cmpq	%rdx, %rax	# tmp105, _35
	je	.L18	#,
	movq	%r12, %rdi	# _19,
	call	*%rax	# _35
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %esi	# tmp110, _18
	jmp	.L18	#
.L21:
# /usr/include/c++/11/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE2993:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2993:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2993-.LLSDACSB2993
.LLSDACSB2993:
.LLSDACSE2993:
	.text
	.size	main._omp_fn.1, .-main._omp_fn.1
	.section	.rodata.str1.1
.LC1:
	.string	"tid2:"
.LC2:
	.string	"variable en segunda tarea: "
	.text
	.p2align 4
	.type	main._omp_fn.2, @function
main._omp_fn.2:
.LFB2994:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2994
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r12	#, tmp127
# prueba.cpp:68:         #pragma omp task shared(variable)
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# prueba.cpp:68:         #pragma omp task shared(variable)
	movl	(%rdi), %r14d	# *.omp_data_i_2(D).variable, variable
# prueba.cpp:70:             int tid = omp_get_thread_num();
	call	omp_get_thread_num@PLT	#
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	movl	$5, %edx	#,
	leaq	.LC1(%rip), %rsi	#, tmp113
	movq	%r12, %rdi	# tmp127,
# prueba.cpp:70:             int tid = omp_get_thread_num();
	movl	%eax, %ebp	# tmp129, tid
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# prueba.cpp:71:             cout << "tid2:" << tid << endl;
	movl	%ebp, %esi	# tid,
	movq	%r12, %rdi	# tmp127,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rbp	# tmp130, _8
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	# *_8._vptr.basic_ostream, *_8._vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_26 + -24B], MEM[(long int *)_26 + -24B]
	movq	240(%rbp,%rax), %r13	# MEM[(const struct __ctype_type * *)_29 + 240B], _34
# /usr/include/c++/11/bits/basic_ios.h:49:       if (!__f)
	testq	%r13, %r13	# _34
	je	.L26	#,
# /usr/include/c++/11/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r13)	#, MEM[(const struct ctype *)_34]._M_widen_ok
	je	.L24	#,
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%r13), %esi	# MEM[(const struct ctype *)_34]._M_widen[10], _33
.L25:
	movq	%rbp, %rdi	# _8,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp132, _32
# /usr/include/c++/11/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# /usr/include/c++/11/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r12, %rdi	# tmp127,
	movl	$27, %edx	#,
	leaq	.LC2(%rip), %rsi	#, tmp120
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# prueba.cpp:74:                     cout << "variable en segunda tarea: " << variable << endl;
	movq	%r12, %rdi	# tmp127,
	movl	%r14d, %esi	# variable,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rbp	# tmp133, _12
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	# *_12._vptr.basic_ostream, *_12._vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_15 + -24B], MEM[(long int *)_15 + -24B]
	movq	240(%rbp,%rax), %r12	# MEM[(const struct __ctype_type * *)_18 + 240B], _23
# /usr/include/c++/11/bits/basic_ios.h:49:       if (!__f)
	testq	%r12, %r12	# _23
	je	.L26	#,
# /usr/include/c++/11/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r12)	#, MEM[(const struct ctype *)_23]._M_widen_ok
	je	.L27	#,
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%r12), %esi	# MEM[(const struct ctype *)_23]._M_widen[10], _52
.L28:
	movq	%rbp, %rdi	# _12,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp135, _21
# /usr/include/c++/11/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# prueba.cpp:68:         #pragma omp task shared(variable)
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
# /usr/include/c++/11/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r13, %rdi	# _34,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	0(%r13), %rax	# MEM[(const struct ctype *)_34].D.31106._vptr.facet, MEM[(const struct ctype *)_34].D.31106._vptr.facet
	movl	$10, %esi	#, _33
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp119
	movq	48(%rax), %rax	# MEM[(int (*) () *)_49 + 48B], _50
	cmpq	%rdx, %rax	# tmp119, _50
	je	.L25	#,
	movq	%r13, %rdi	# _34,
	call	*%rax	# _50
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %esi	# tmp131, _33
	jmp	.L25	#
	.p2align 4,,10
	.p2align 3
.L27:
# /usr/include/c++/11/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r12, %rdi	# _23,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%r12), %rax	# MEM[(const struct ctype *)_23].D.31106._vptr.facet, MEM[(const struct ctype *)_23].D.31106._vptr.facet
	movl	$10, %esi	#, _52
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp126
	movq	48(%rax), %rax	# MEM[(int (*) () *)_71 + 48B], _72
	cmpq	%rdx, %rax	# tmp126, _72
	je	.L28	#,
	movq	%r12, %rdi	# _23,
	call	*%rax	# _72
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %esi	# tmp134, _52
	jmp	.L28	#
.L26:
# /usr/include/c++/11/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE2994:
	.section	.gcc_except_table
.LLSDA2994:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2994-.LLSDACSB2994
.LLSDACSB2994:
.LLSDACSE2994:
	.text
	.size	main._omp_fn.2, .-main._omp_fn.2
	.section	.rodata.str1.1
.LC3:
	.string	"variable fuera: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2617:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	leaq	main._omp_fn.0(%rip), %rdi	#, tmp100
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# prueba.cpp:54: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	movq	%rax, 8(%rsp)	# tmp114, D.56602
	xorl	%eax, %eax	# tmp114
	leaq	4(%rsp), %rsi	#, tmp99
# prueba.cpp:56: #pragma omp parallel
	movl	$0, 4(%rsp)	#, .omp_data_o.6.variable
	call	GOMP_parallel@PLT	#
	movl	4(%rsp), %ebp	# .omp_data_o.6.variable, variable
# prueba.cpp:80:     cout << "variable fuera: " << variable << endl;
	leaq	.LC3(%rip), %rsi	#, tmp101
	leaq	_ZSt4cout(%rip), %rdi	#, tmp102
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdi	# tmp110, _7
# prueba.cpp:80:     cout << "variable fuera: " << variable << endl;
	movl	%ebp, %esi	# variable,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rbp	# tmp111, _9
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	# _9->_vptr.basic_ostream, _9->_vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_11 + -24B], MEM[(long int *)_11 + -24B]
	movq	240(%rbp,%rax), %r12	# MEM[(const struct __ctype_type * *)_14 + 240B], _19
# /usr/include/c++/11/bits/basic_ios.h:49:       if (!__f)
	testq	%r12, %r12	# _19
	je	.L42	#,
# /usr/include/c++/11/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r12)	#, MEM[(const struct ctype *)_19]._M_widen_ok
	je	.L37	#,
# /usr/include/c++/11/bits/locale_facets.h:878: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movsbl	67(%r12), %esi	# MEM[(const struct ctype *)_19]._M_widen[10],
.L38:
# /usr/include/c++/11/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%rbp, %rdi	# _9,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp113, _17
# /usr/include/c++/11/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# prueba.cpp:83: }
	movq	8(%rsp), %rax	# D.56602, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	jne	.L43	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L37:
	.cfi_restore_state
# /usr/include/c++/11/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r12, %rdi	# _19,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%r12), %rax	# MEM[(const struct ctype *)_19].D.31106._vptr.facet, MEM[(const struct ctype *)_19].D.31106._vptr.facet
	movl	$10, %esi	#,
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp106
	movq	48(%rax), %rax	# MEM[(int (*) () *)_32 + 48B], _33
	cmpq	%rdx, %rax	# tmp106, _33
	je	.L38	#,
	movl	$10, %esi	#,
	movq	%r12, %rdi	# _19,
	call	*%rax	# _33
	movsbl	%al, %esi	# tmp112,
	jmp	.L38	#
.L43:
# prueba.cpp:83: }
	call	__stack_chk_fail@PLT	#
.L42:
# /usr/include/c++/11/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE2617:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z12priorityListB5cxx11, @function
_GLOBAL__sub_I__Z12priorityListB5cxx11:
.LFB2991:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	leaq	__dso_handle(%rip), %r12	#, tmp83
# prueba.cpp:83: }
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
# /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbp	#, tmp82
	movq	%rbp, %rdi	# tmp82,
# prueba.cpp:83: }
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	movq	%r12, %rdx	# tmp83,
	movq	%rbp, %rsi	# tmp82,
	call	__cxa_atexit@PLT	#
# /usr/include/c++/11/bits/stl_list.h:152: 	this->_M_next = this->_M_prev = this;
	leaq	_Z12priorityListB5cxx11(%rip), %rsi	#, tmp87
# prueba.cpp:11: list<int> priorityList;
	movq	%r12, %rdx	# tmp83,
# /usr/include/c++/11/bits/stl_list.h:154: 	this->_M_size = 0;
	movq	$0, 16+_Z12priorityListB5cxx11(%rip)	#, MEM[(struct _List_node_header *)&priorityList]._M_size
# /usr/include/c++/11/bits/stl_list.h:152: 	this->_M_next = this->_M_prev = this;
	movq	%rsi, 8+_Z12priorityListB5cxx11(%rip)	# tmp87, MEM[(struct _List_node_header *)&priorityList].D.38287._M_prev
# prueba.cpp:11: list<int> priorityList;
	leaq	_ZNSt7__cxx114listIiSaIiEED1Ev(%rip), %rdi	#, tmp94
# /usr/include/c++/11/bits/stl_list.h:152: 	this->_M_next = this->_M_prev = this;
	movq	%rsi, _Z12priorityListB5cxx11(%rip)	# tmp87, MEM[(struct _List_node_header *)&priorityList].D.38287._M_next
# prueba.cpp:83: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# prueba.cpp:11: list<int> priorityList;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE2991:
	.size	_GLOBAL__sub_I__Z12priorityListB5cxx11, .-_GLOBAL__sub_I__Z12priorityListB5cxx11
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12priorityListB5cxx11
	.globl	listMutex
	.bss
	.align 32
	.type	listMutex, @object
	.size	listMutex, 40
listMutex:
	.zero	40
	.globl	_Z12priorityListB5cxx11
	.align 16
	.type	_Z12priorityListB5cxx11, @object
	.size	_Z12priorityListB5cxx11, 24
_Z12priorityListB5cxx11:
	.zero	24
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
