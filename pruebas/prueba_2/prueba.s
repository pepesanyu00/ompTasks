	.file	"prueba.cpp"

 # rs6000/powerpc options: --with-cpu=power8 -mcpu=power8 -msdata=none
	.abiversion 2
 # GNU C++11 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (powerpc64le-linux-gnu)
 #	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -imultiarch powerpc64le-linux-gnu -D_GNU_SOURCE
 # -D_REENTRANT prueba.cpp -msecure-plt -mcpu=power8 -O2 -Wall -std=c++11
 # -fverbose-asm -fopenmp -fasynchronous-unwind-tables
 # -fstack-protector-strong -Wformat-security -fstack-clash-protection
 # options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
 # -falign-functions -falign-jumps -falign-labels -falign-loops
 # -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
 # -fbranch-count-reg -fcaller-saves -fcode-hoisting
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fcrossjumping -fcse-follow-jumps -fdefer-pop
 # -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -fexceptions -fexpensive-optimizations -fforward-propagate
 # -ffp-int-builtin-inexact -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
 # -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
 # -fif-conversion -fif-conversion2 -findirect-inlining -finline
 # -finline-atomics -finline-functions-called-once -finline-small-functions
 # -fipa-bit-cp -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables
 # -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
 # -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
 # -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
 # -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 # -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
 # -fmath-errno -fmerge-constants -fmerge-debug-strings
 # -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 # -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
 # -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
 # -freorder-functions -frerun-cse-after-loop
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-pressure -fsched-rank-heuristic -fsched-spec
 # -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 # -fschedule-insns -fschedule-insns2 -fsection-anchors
 # -fsemantic-interposition -fshow-column -fshrink-wrap
 # -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
 # -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-clash-protection
 # -fstack-protector-strong -fstdarg-opt -fstore-merging -fstrict-aliasing
 # -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
 # -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 # -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 # -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 # -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
 # -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
 # -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
 # -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
 # -m64 -maix-struct-return -malign-branch-targets -maltivec -malways-hint
 # -mblock-compare-inline-limit= -mblock-compare-inline-loop-limit=
 # -mblock-move-inline-limit= -mcmpb -mcrypto -mefficient-unaligned-vsx
 # -mfloat128 -mfold-gimple -mfprnd -mfriz -mglibc -mgnu-attribute
 # -mhard-dfp -mhard-float -mhtm -mlittle -mlittle-endian -mmfcrf
 # -mno-fp-in-toc -mpltseq -mpointers-to-nested-functions -mpopcntb
 # -mpopcntd -mpower8-fusion -mpower8-vector -mpowerpc-gfxopt
 # -mpowerpc-gpopt -mpowerpc64 -mquad-memory-atomic -mreadonly-in-sdata
 # -mrecip-precision -msave-toc-indirect -msched-groups -msched-prolog
 # -msecure-plt -mstring-compare-inline-limit= -mtls-markers -mupdate -mvsx

	.section	".text"
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1289:
	.cfi_startproc
 # /usr/include/c++/9/bits/locale_facets.h:1085:       { return __c; }
	mr 3,4		 #, tmp125
	blr	
	.long 0
	.byte 0,9,0,0,0,0,0,0
	.cfi_endproc
.LFE1289:
	.size	_ZNKSt5ctypeIcE8do_widenEc,.-_ZNKSt5ctypeIcE8do_widenEc
	.section	".text"
	.align 2
	.p2align 4,,15
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB2944:
	.cfi_startproc
	.cfi_personality 0x94,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x14,.LLSDA2944
.LCF1:
0:	addis 2,12,.TOC.-.LCF1@ha
	addi 2,2,.TOC.-.LCF1@l
	.localentry	main._omp_fn.0,.-main._omp_fn.0
	mflr 0		 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-160(1)	 #,,
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	ld 9,-28688(13)	 #, tmp139
	std 9,136(1)	 # D.55831, tmp139
	li 9,0	 # tmp139
	mr 31,3		 # .omp_data_i, tmp136
	bl GOMP_single_start	 #
	nop
	cmpdi 0,3,0	 #, tmp126, tmp137
	bne 0,.L4	 #
.L5:
	bl GOMP_barrier	 #
	nop
 # prueba.cpp:56: #pragma omp parallel
	ld 9,136(1)	 # D.55831, tmp140
	ld 10,-28688(13)	 #, tmp141
	xor. 9,9,10	 # tmp140, tmp141
	li 10,0	 # tmp141
	bne 0,.L9	 #
 # prueba.cpp:56: #pragma omp parallel
	addi 1,1,160	 #,,
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)	 #,
	ld 31,-8(1)	 #,
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	blr	
	.p2align 4,,15
.L4:
	.cfi_restore_state
	std 30,144(1)	 #,
	.cfi_offset 30, -16
	li 30,0		 # tmp129,
	addi 4,1,128	 # tmp127,,
 # prueba.cpp:60:         #pragma omp task shared(variable)
	std 31,128(1)	 # .omp_data_o.8.variable, .omp_data_i
	addis 3,2,main._omp_fn.1@toc@ha	 #,,
	li 10,0		 #,
	std 30,96(1)	 #, tmp129
	li 9,0		 #,
	li 8,1		 #,
	std 4,120(1)	 # %sfp, tmp127
	li 7,8		 #,
	li 6,8		 #,
	li 5,0		 #,
	addi 3,3,main._omp_fn.1@toc@l	 #,,
	bl GOMP_task	 #
	nop
 # prueba.cpp:68:         sleep(1);
	li 3,1		 #,
	bl sleep	 #
	nop
	std 30,96(1)	 #, tmp129
	ld 4,120(1)	 # %sfp, tmp127
	addis 3,2,main._omp_fn.2@toc@ha	 #,,
	li 10,0		 #,
	li 9,0		 #,
	li 8,1		 #,
	li 7,4		 #,
	li 6,4		 #,
	li 5,0		 #,
	addi 3,3,main._omp_fn.2@toc@l	 #,,
 # prueba.cpp:69:         #pragma omp task shared(variable)
	lwz 11,0(31)	 # *.omp_data_i_5(D).variable,
	stw 11,128(1)	 # .omp_data_o.9.variable, *.omp_data_i_5(D).variable
	bl GOMP_task	 #
	nop
	ld 30,144(1)	 #,
	.cfi_restore 30
	b .L5		 #
.L9:
	std 30,144(1)	 #,
	.cfi_offset 30, -16
 # prueba.cpp:56: #pragma omp parallel
	bl __stack_chk_fail	 #
	nop
	.long 0
	.byte 0,9,0,1,128,2,0,0
	.cfi_endproc
.LFE2944:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2944-.LLSDACSB2944
.LLSDACSB2944:
.LLSDACSE2944:
	.section	".text"
	.size	main._omp_fn.0,.-main._omp_fn.0
	.section	.text._ZNSt7__cxx114listIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt7__cxx114listIiSaIiEED2Ev
	.type	_ZNSt7__cxx114listIiSaIiEED2Ev, @function
_ZNSt7__cxx114listIiSaIiEED2Ev:
.LFB2941:
	.cfi_startproc
.LCF2:
0:	addis 2,12,.TOC.-.LCF2@ha
	addi 2,2,.TOC.-.LCF2@l
	.localentry	_ZNSt7__cxx114listIiSaIiEED2Ev,.-_ZNSt7__cxx114listIiSaIiEED2Ev
	std 31,-8(1)	 #,
	stdu 1,-48(1)	 #,,
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
 # /usr/include/c++/9/bits/list.tcc:70:       __detail::_List_node_base* __cur = _M_impl._M_node._M_next;
	ld 31,0(3)	 # MEM[(struct _List_base *)this_1(D)]._M_impl._M_node.D.37190._M_next, __cur
 # /usr/include/c++/9/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	cmpld 0,31,3	 # this, tmp125, __cur
	beq 0,.L10	 #
	mflr 0		 #,
	.cfi_register 65, 0
	std 30,32(1)	 #,
	.cfi_offset 30, -16
	mr 30,3		 # this, tmp127
	std 0,64(1)	 #,
	.cfi_offset 65, 16
	.p2align 5
.L12:
	mr 3,31		 # __cur, __cur
 # /usr/include/c++/9/bits/list.tcc:74: 	  __cur = __tmp->_M_next;
	ld 31,0(31)	 # MEM[(struct _Node *)__cur_13].D.54371._M_next, __cur
 # /usr/include/c++/9/ext/new_allocator.h:128: 	::operator delete(__p);
	bl _ZdlPv	 #
	nop
 # /usr/include/c++/9/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	cmpld 0,31,30	 # this, tmp126, __cur
	bne 0,.L12	 #
	ld 0,64(1)	 #,
	ld 30,32(1)	 #,
	.cfi_restore 30
	mtlr 0		 #,
	.cfi_restore 65
.L10:
 # /usr/include/c++/9/bits/stl_list.h:823:       ~list() = default;
	addi 1,1,48	 #,,
	.cfi_def_cfa_offset 0
	ld 31,-8(1)	 #,
	.cfi_restore 31
	blr	
	.long 0
	.byte 0,9,0,1,128,2,0,0
	.cfi_endproc
.LFE2941:
	.size	_ZNSt7__cxx114listIiSaIiEED2Ev,.-_ZNSt7__cxx114listIiSaIiEED2Ev
	.weak	_ZNSt7__cxx114listIiSaIiEED1Ev
	.set	_ZNSt7__cxx114listIiSaIiEED1Ev,_ZNSt7__cxx114listIiSaIiEED2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 3
.LC0:
	.string	"tid1:"
	.section	".toc","aw"
	.align 3
.LC1:
	.quad	_ZSt4cout
	.section	".text"
	.align 2
	.p2align 4,,15
	.type	main._omp_fn.1, @function
main._omp_fn.1:
.LFB2945:
	.cfi_startproc
	.cfi_personality 0x94,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x14,.LLSDA2945
.LCF3:
0:	addis 2,12,.TOC.-.LCF3@ha
	addi 2,2,.TOC.-.LCF3@l
	.localentry	main._omp_fn.1,.-main._omp_fn.1
	mflr 0		 #,
	std 29,-24(1)	 #,
	std 30,-16(1)	 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-64(1)	 #,,
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 29,3		 # .omp_data_i, tmp152
	std 2,24(1)	 #,
 # prueba.cpp:62:             int tid = omp_get_thread_num();
	bl omp_get_thread_num	 #
	nop
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	addis 30,2,.LC1@toc@ha	 # tmp138,,
	ld 30,.LC1@toc@l(30)	 # tmp138,, tmp138
	addis 4,2,.LC0@toc@ha	 #,,
	li 5,5		 #,
	addi 4,4,.LC0@toc@l	 #,,
 # prueba.cpp:62:             int tid = omp_get_thread_num();
	mr 31,3		 # tmp136, tmp153
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	mr 3,30		 #, tmp138
	bl _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	 #
	nop
 # prueba.cpp:63:             cout << "tid1:" << tid << endl;
	mr 3,30		 #, tmp138
	mr 4,31		 #, tmp136
	bl _ZNSolsEi	 #
	nop
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	ld 9,0(3)	 # *_4._vptr.basic_ostream, *_4._vptr.basic_ostream
	ld 9,-24(9)	 # MEM[(long int *)_10 + -24B], MEM[(long int *)_10 + -24B]
	add 9,3,9	 # tmp142, _4, MEM[(long int *)_10 + -24B]
	ld 30,240(9)	 # MEM[(const struct __ctype_type * *)_13 + 240B], _14
 # /usr/include/c++/9/bits/basic_ios.h:49:       if (!__f)
	cmpdi 0,30,0	 #, tmp143, _14
	beq 0,.L21	 #
 # /usr/include/c++/9/bits/locale_facets.h:874: 	if (_M_widen_ok)
	lbz 9,56(30)	 # MEM[(const struct ctype *)_14]._M_widen_ok, MEM[(const struct ctype *)_14]._M_widen_ok
	mr 31,3		 # _4, tmp154
	cmpwi 0,9,0	 #, tmp145, MEM[(const struct ctype *)_14]._M_widen_ok
	beq 0,.L17	 #
 # /usr/include/c++/9/bits/locale_facets.h:875: 	  return _M_widen[static_cast<unsigned char>(__c)];
	lbz 4,67(30)	 # MEM[(const struct ctype *)_14]._M_widen, _21
.L18:
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	mr 3,31		 #, _4
	bl _ZNSo3putEc	 #
	nop
 # /usr/include/c++/9/ostream:622:     { return __os.flush(); }
	bl _ZNSo5flushEv	 #
	nop
 # prueba.cpp:60:         #pragma omp task shared(variable)
	addi 1,1,64	 #,,
	.cfi_remember_state
	.cfi_def_cfa_offset 0
 # prueba.cpp:65:             variable = 17;
	ld 9,0(29)	 # *.omp_data_i_5(D).variable, *.omp_data_i_5(D).variable
	li 10,17		 # tmp151,
 # prueba.cpp:60:         #pragma omp task shared(variable)
	ld 0,16(1)	 #,
	ld 29,-24(1)	 #,
	ld 30,-16(1)	 #,
	ld 31,-8(1)	 #,
 # prueba.cpp:65:             variable = 17;
	stw 10,0(9)	 # *_6, tmp151
 # prueba.cpp:60:         #pragma omp task shared(variable)
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr	
	.p2align 4,,15
.L17:
	.cfi_restore_state
 # /usr/include/c++/9/bits/locale_facets.h:876: 	this->_M_widen_init();
	mr 3,30		 #, _14
	bl _ZNKSt5ctypeIcE13_M_widen_initEv	 #
	nop
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	ld 10,0(30)	 # MEM[(const struct ctype *)_14].D.30158._vptr.facet, MEM[(const struct ctype *)_14].D.30158._vptr.facet
	addis 9,2,_ZNKSt5ctypeIcE8do_widenEc@toc@ha	 # tmp147,,
	li 4,10		 # _21,
	addi 9,9,_ZNKSt5ctypeIcE8do_widenEc@toc@l	 # tmp147, tmp147,
	ld 12,48(10)	 # MEM[(int (*) () *)_24 + 48B], _25
	cmpd 0,12,9	 # tmp147, tmp148, _25
	beq 0,.L18	 #
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	mtctr 12		 #,
	mr 3,30		 #, _14
	bctrl	 #
	ld 2,24(1)	 #
	mr 4,3		 # _21, tmp155
	b .L18		 #
.L21:
 # /usr/include/c++/9/bits/basic_ios.h:50: 	__throw_bad_cast();
	bl _ZSt16__throw_bad_castv	 #
	nop
	.long 0
	.byte 0,9,0,1,128,3,0,0
	.cfi_endproc
.LFE2945:
	.section	.gcc_except_table
.LLSDA2945:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2945-.LLSDACSB2945
.LLSDACSB2945:
.LLSDACSE2945:
	.section	".text"
	.size	main._omp_fn.1,.-main._omp_fn.1
	.section	.rodata.str1.8
	.align 3
.LC2:
	.string	"tid2:"
	.align 3
.LC4:
	.string	"variable en segunda tarea: "
	.section	".toc","aw"
	.set .LC3,.LC1
	.section	".text"
	.align 2
	.p2align 4,,15
	.type	main._omp_fn.2, @function
main._omp_fn.2:
.LFB2946:
	.cfi_startproc
	.cfi_personality 0x94,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x14,.LLSDA2946
.LCF4:
0:	addis 2,12,.TOC.-.LCF4@ha
	addi 2,2,.TOC.-.LCF4@l
	.localentry	main._omp_fn.2,.-main._omp_fn.2
	mflr 0		 #,
	std 28,-32(1)	 #,
	std 29,-24(1)	 #,
	std 30,-16(1)	 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-64(1)	 #,,
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	lwa 28,0(3)	 # *.omp_data_i_2(D).variable, variable
	std 2,24(1)	 #,
 # prueba.cpp:71:             int tid = omp_get_thread_num();
	bl omp_get_thread_num	 #
	nop
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	addis 30,2,.LC3@toc@ha	 # tmp175,,
	ld 30,.LC3@toc@l(30)	 # tmp175,, tmp175
	addis 4,2,.LC2@toc@ha	 #,,
	li 5,5		 #,
	addi 4,4,.LC2@toc@l	 #,,
 # prueba.cpp:71:             int tid = omp_get_thread_num();
	mr 31,3		 # tmp148, tmp177
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	mr 3,30		 #, tmp175
	bl _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	 #
	nop
 # prueba.cpp:72:             cout << "tid2:" << tid << endl;
	mr 4,31		 #, tmp148
	mr 3,30		 #, tmp175
	bl _ZNSolsEi	 #
	nop
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	ld 9,0(3)	 # *_6._vptr.basic_ostream, *_6._vptr.basic_ostream
	ld 9,-24(9)	 # MEM[(long int *)_21 + -24B], MEM[(long int *)_21 + -24B]
	add 9,3,9	 # tmp154, _6, MEM[(long int *)_21 + -24B]
	ld 29,240(9)	 # MEM[(const struct __ctype_type * *)_24 + 240B], _25
 # /usr/include/c++/9/bits/basic_ios.h:49:       if (!__f)
	cmpdi 0,29,0	 #, tmp155, _25
	beq 0,.L26	 #
 # /usr/include/c++/9/bits/locale_facets.h:874: 	if (_M_widen_ok)
	lbz 9,56(29)	 # MEM[(const struct ctype *)_25]._M_widen_ok, MEM[(const struct ctype *)_25]._M_widen_ok
	mr 31,3		 # _6, tmp178
	cmpwi 0,9,0	 #, tmp157, MEM[(const struct ctype *)_25]._M_widen_ok
	beq 0,.L24	 #
 # /usr/include/c++/9/bits/locale_facets.h:875: 	  return _M_widen[static_cast<unsigned char>(__c)];
	lbz 4,67(29)	 # MEM[(const struct ctype *)_25]._M_widen, _32
.L25:
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	mr 3,31		 #, _6
	bl _ZNSo3putEc	 #
	nop
 # /usr/include/c++/9/ostream:622:     { return __os.flush(); }
	bl _ZNSo5flushEv	 #
	nop
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	addis 4,2,.LC4@toc@ha	 #,,
	li 5,27		 #,
	addi 4,4,.LC4@toc@l	 #,,
	mr 3,30		 #, tmp175
	bl _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	 #
	nop
 # prueba.cpp:75:                     cout << "variable en segunda tarea: " << variable << endl;
	mr 3,30		 #, tmp175
	mr 4,28		 #, variable
	bl _ZNSolsEi	 #
	nop
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	ld 9,0(3)	 # *_8._vptr.basic_ostream, *_8._vptr.basic_ostream
 # prueba.cpp:75:                     cout << "variable en segunda tarea: " << variable << endl;
	mr 31,3		 # _8, tmp180
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	ld 9,-24(9)	 # MEM[(long int *)_13 + -24B], MEM[(long int *)_13 + -24B]
	add 9,3,9	 # tmp167, _8, MEM[(long int *)_13 + -24B]
	ld 30,240(9)	 # MEM[(const struct __ctype_type * *)_16 + 240B], _17
 # /usr/include/c++/9/bits/basic_ios.h:49:       if (!__f)
	cmpdi 0,30,0	 #, tmp168, _17
	beq 0,.L26	 #
 # /usr/include/c++/9/bits/locale_facets.h:874: 	if (_M_widen_ok)
	lbz 9,56(30)	 # MEM[(const struct ctype *)_17]._M_widen_ok, MEM[(const struct ctype *)_17]._M_widen_ok
	cmpwi 0,9,0	 #, tmp170, MEM[(const struct ctype *)_17]._M_widen_ok
	beq 0,.L27	 #
 # /usr/include/c++/9/bits/locale_facets.h:875: 	  return _M_widen[static_cast<unsigned char>(__c)];
	lbz 4,67(30)	 # MEM[(const struct ctype *)_17]._M_widen, _46
.L28:
 # /usr/include/c++/9/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	mr 3,31		 #, _8
	bl _ZNSo3putEc	 #
	nop
 # /usr/include/c++/9/ostream:622:     { return __os.flush(); }
	bl _ZNSo5flushEv	 #
	nop
 # prueba.cpp:69:         #pragma omp task shared(variable)
	addi 1,1,64	 #,,
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)	 #,
	ld 28,-32(1)	 #,
	ld 29,-24(1)	 #,
	ld 30,-16(1)	 #,
	ld 31,-8(1)	 #,
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr	
	.p2align 4,,15
.L24:
	.cfi_restore_state
 # /usr/include/c++/9/bits/locale_facets.h:876: 	this->_M_widen_init();
	mr 3,29		 #, _25
	bl _ZNKSt5ctypeIcE13_M_widen_initEv	 #
	nop
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	ld 10,0(29)	 # MEM[(const struct ctype *)_25].D.30158._vptr.facet, MEM[(const struct ctype *)_25].D.30158._vptr.facet
	addis 9,2,_ZNKSt5ctypeIcE8do_widenEc@toc@ha	 # tmp159,,
	li 4,10		 # _32,
	addi 9,9,_ZNKSt5ctypeIcE8do_widenEc@toc@l	 # tmp159, tmp159,
	ld 12,48(10)	 # MEM[(int (*) () *)_35 + 48B], _36
	cmpd 0,12,9	 # tmp159, tmp160, _36
	beq 0,.L25	 #
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	mtctr 12		 #,
	mr 3,29		 #, _25
	bctrl	 #
	ld 2,24(1)	 #
	mr 4,3		 # _32, tmp179
	b .L25		 #
	.p2align 4,,15
.L27:
 # /usr/include/c++/9/bits/locale_facets.h:876: 	this->_M_widen_init();
	mr 3,30		 #, _17
	bl _ZNKSt5ctypeIcE13_M_widen_initEv	 #
	nop
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	ld 10,0(30)	 # MEM[(const struct ctype *)_17].D.30158._vptr.facet, MEM[(const struct ctype *)_17].D.30158._vptr.facet
	addis 9,2,_ZNKSt5ctypeIcE8do_widenEc@toc@ha	 # tmp172,,
	li 4,10		 # _46,
	addi 9,9,_ZNKSt5ctypeIcE8do_widenEc@toc@l	 # tmp172, tmp172,
	ld 12,48(10)	 # MEM[(int (*) () *)_49 + 48B], _50
	cmpd 0,12,9	 # tmp172, tmp173, _50
	beq 0,.L28	 #
 # /usr/include/c++/9/bits/locale_facets.h:877: 	return this->do_widen(__c);
	mtctr 12		 #,
	mr 3,30		 #, _17
	bctrl	 #
	ld 2,24(1)	 #
	mr 4,3		 # _46, tmp181
	b .L28		 #
.L26:
 # /usr/include/c++/9/bits/basic_ios.h:50: 	__throw_bad_cast();
	bl _ZSt16__throw_bad_castv	 #
	nop
	.long 0
	.byte 0,9,0,1,128,4,0,0
	.cfi_endproc
.LFE2946:
	.section	.gcc_except_table
.LLSDA2946:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2946-.LLSDACSB2946
.LLSDACSB2946:
.LLSDACSE2946:
	.section	".text"
	.size	main._omp_fn.2,.-main._omp_fn.2
	.section	".toc","aw"
.LC5:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.section	".text"
	.align 2
	.p2align 4,,15
	.globl _Z13priorityFoundi
	.type	_Z13priorityFoundi, @function
_Z13priorityFoundi:
.LFB2561:
	.cfi_startproc
.LCF5:
0:	addis 2,12,.TOC.-.LCF5@ha
	addi 2,2,.TOC.-.LCF5@l
	.localentry	_Z13priorityFoundi,.-_Z13priorityFoundi
	mflr 0		 #,
	std 29,-24(1)	 #,
	std 30,-16(1)	 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-64(1)	 #,,
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:749:     return __gthrw_(pthread_mutex_lock) (__mutex);
	addis 29,2,.LANCHOR0@toc@ha	 # tmp154,,
 # prueba.cpp:48: {
	mr 31,3		 # priority, tmp157
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:748:   if (__gthread_active_p ())
	addis 30,2,.LC5@toc@ha	 # tmp152,,
	ld 30,.LC5@toc@l(30)	 # tmp152,, tmp152
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:749:     return __gthrw_(pthread_mutex_lock) (__mutex);
	addi 29,29,.LANCHOR0@toc@l	 # tmp154, tmp154,
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:748:   if (__gthread_active_p ())
	cmpdi 0,30,0	 #, tmp129, tmp152
	beq 0,.L36	 #
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:749:     return __gthrw_(pthread_mutex_lock) (__mutex);
	mr 3,29		 #, tmp154
	bl _ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t	 #
	nop
 # /usr/include/c++/9/bits/std_mutex.h:103:       if (__e)
	cmpdi 0,3,0	 #, tmp132, tmp158
	bne 0,.L53	 #
.L36:
 # prueba.cpp:50:     return count(priorityList.begin(), priorityList.end(), priority - 1) > 0;
	addis 10,2,.LANCHOR0+40@toc@ha	 # __first$_M_node,,,
	ld 10,.LANCHOR0+40@toc@l(10)	 # __first$_M_node,,, __first$_M_node
 # /usr/include/c++/9/bits/stl_algo.h:3193:       for (; __first != __last; ++__first)
	addi 6,29,40	 # tmp153, tmp154,
 # prueba.cpp:50:     return count(priorityList.begin(), priorityList.end(), priority - 1) > 0;
	addi 7,31,-1	 # tmp134, priority,
	extsw 7,7	 # _1, tmp134
 # /usr/include/c++/9/bits/stl_algo.h:3193:       for (; __first != __last; ++__first)
	cmpd 0,10,6	 # tmp153, tmp137, __first$_M_node
	beq 0,.L41	 #
 # /usr/include/c++/9/bits/stl_algo.h:3192:       typename iterator_traits<_InputIterator>::difference_type __n = 0;
	li 8,0		 # __n,
	.p2align 5
.L39:
 # /usr/include/c++/9/bits/stl_algo.h:3194: 	if (__pred(__first))
	lwz 9,16(10)	 # MEM[(int &)__first$_M_node_16 + 16],
 # /usr/include/c++/9/bits/stl_list.h:219: 	_M_node = _M_node->_M_next;
	ld 10,0(10)	 # __first$_M_node_16->_M_next, __first$_M_node
 # /usr/include/c++/9/bits/stl_algo.h:3195: 	  ++__n;
	xor 9,9,7	 #, tmp159, MEM[(int &)__first$_M_node_16 + 16], _1
 # /usr/include/c++/9/bits/stl_algo.h:3193:       for (; __first != __last; ++__first)
	cmpd 0,10,6	 # tmp153, tmp142, __first$_M_node
 # /usr/include/c++/9/bits/stl_algo.h:3195: 	  ++__n;
	cntlzw 9,9	 # tmp160, tmp159
	srwi 9,9,5	 #, tmp155, tmp160
	add 8,8,9	 # __n, __n, tmp155
 # /usr/include/c++/9/bits/stl_algo.h:3193:       for (; __first != __last; ++__first)
	bne 0,.L39	 #
	addi 31,8,-1	 # tmp145, __n,
	nor 8,8,31	 #, tmp147, __n, tmp145
	srdi 31,8,63	 #, <retval>, tmp147
.L37:
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:778:   if (__gthread_active_p ())
	cmpdi 0,30,0	 #, tmp149, tmp152
	beq 0,.L40	 #
 # /usr/include/powerpc64le-linux-gnu/c++/9/bits/gthr-default.h:779:     return __gthrw_(pthread_mutex_unlock) (__mutex);
	mr 3,29		 #, tmp154
	bl _ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t	 #
	nop
.L40:
 # prueba.cpp:51: }
	addi 1,1,64	 #,,
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mr 3,31		 #, <retval>
	ld 0,16(1)	 #,
	ld 29,-24(1)	 #,
	ld 30,-16(1)	 #,
	ld 31,-8(1)	 #,
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr	
	.p2align 4,,15
.L41:
	.cfi_restore_state
 # /usr/include/c++/9/bits/stl_algo.h:3193:       for (; __first != __last; ++__first)
	li 31,0		 # <retval>,
	b .L37		 #
.L53:
 # /usr/include/c++/9/bits/std_mutex.h:104: 	__throw_system_error(__e);
	bl _ZSt20__throw_system_errori	 #
	nop
	.long 0
	.byte 0,9,0,1,128,3,0,0
	.cfi_endproc
.LFE2561:
	.size	_Z13priorityFoundi,.-_Z13priorityFoundi
	.section	.rodata.str1.8
	.align 3
.LC6:
	.string	"variable fuera: "
	.section	".toc","aw"
	.set .LC7,.LC1
	.section	.text.startup,"ax",@progbits
	.align 2
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
.LFB2562:
	.cfi_startproc
.LCF6:
0:	addis 2,12,.TOC.-.LCF6@ha
	addi 2,2,.TOC.-.LCF6@l
	.localentry	main,.-main
	mflr 0		 #,
	std 30,-16(1)	 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-64(1)	 #,,
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
 # prueba.cpp:56: #pragma omp parallel
	li 9,0		 # tmp124,
	addis 3,2,main._omp_fn.0@toc@ha	 #,,
	li 6,0		 #,
	li 5,0		 #,
	addi 4,1,36	 #,,
	addi 3,3,main._omp_fn.0@toc@l	 #,,
 # prueba.cpp:54: {
	ld 10,-28688(13)	 #, tmp133
	std 10,40(1)	 # D.55887, tmp133
	li 10,0	 # tmp133
 # prueba.cpp:56: #pragma omp parallel
	stw 9,36(1)	 # .omp_data_o.10.variable, tmp124
	bl GOMP_parallel	 #
	nop
	lwa 30,36(1)	 # .omp_data_o.10.variable, variable
 # /usr/include/c++/9/ostream:570: 	__ostream_insert(__out, __s,
	addis 31,2,.LC7@toc@ha	 # tmp128,,
	ld 31,.LC7@toc@l(31)	 # tmp128,, tmp128
	addis 4,2,.LC6@toc@ha	 #,,
	li 5,16		 #,
	addi 4,4,.LC6@toc@l	 #,,
	mr 3,31		 #, tmp128
	bl _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	 #
	nop
 # prueba.cpp:81:     cout << "variable fuera: " << variable << endl;
	mr 4,30		 #, variable
	mr 3,31		 #, tmp128
	bl _ZNSolsEi	 #
	nop
 # /usr/include/c++/9/ostream:113: 	return __pf(*this);
	bl _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	 #
	nop
 # prueba.cpp:84: }
	ld 9,40(1)	 # D.55887, tmp134
	ld 10,-28688(13)	 #, tmp135
	xor. 9,9,10	 # tmp134, tmp135
	li 10,0	 # tmp135
	bne 0,.L57	 #
	addi 1,1,64	 #,,
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	li 3,0		 #,
	ld 0,16(1)	 #,
	ld 30,-16(1)	 #,
	ld 31,-8(1)	 #,
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	blr	
.L57:
	.cfi_restore_state
	bl __stack_chk_fail	 #
	nop
	.long 0
	.byte 0,9,0,1,128,2,0,0
	.cfi_endproc
.LFE2562:
	.size	main,.-main
	.section	".toc","aw"
.LC8:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.text.startup
	.align 2
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12priorityListB5cxx11, @function
_GLOBAL__sub_I__Z12priorityListB5cxx11:
.LFB2943:
	.cfi_startproc
.LCF7:
0:	addis 2,12,.TOC.-.LCF7@ha
	addi 2,2,.TOC.-.LCF7@l
	.localentry	_GLOBAL__sub_I__Z12priorityListB5cxx11,.-_GLOBAL__sub_I__Z12priorityListB5cxx11
	mflr 0		 #,
	std 31,-8(1)	 #,
	std 0,16(1)	 #,
	stdu 1,-64(1)	 #,,
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 31, -8
 # /usr/include/c++/9/iostream:74:   static ios_base::Init __ioinit;
	addis 4,2,.LANCHOR0+64@toc@ha	 # tmp122,,,
	addis 5,2,__dso_handle@toc@ha	 # tmp123,,
	addi 4,4,.LANCHOR0+64@toc@l	 # tmp122, tmp122,
	addi 5,5,__dso_handle@toc@l	 # tmp123, tmp123,
	mr 3,4		 #, tmp122
	addis 31,2,.LANCHOR0@toc@ha	 # tmp121,,
	std 5,40(1)	 # %sfp, tmp123
	std 4,32(1)	 # %sfp, tmp122
	bl _ZNSt8ios_base4InitC1Ev	 #
	nop
	ld 4,32(1)	 # %sfp, tmp122
	ld 5,40(1)	 # %sfp, tmp123
	addis 3,2,.LC8@toc@ha	 #,,
	ld 3,.LC8@toc@l(3)	 #,,
	addi 31,31,.LANCHOR0@toc@l	 # tmp121, tmp121,
	std 5,32(1)	 # %sfp, tmp123
	bl __cxa_atexit	 #
	nop
 # /usr/include/c++/9/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	addi 4,31,40	 # tmp129, tmp121,
	addis 10,2,.LANCHOR0+48@toc@ha	 # tmp140,,,
 # prueba.cpp:11: list<int> priorityList;
	ld 5,32(1)	 # %sfp, tmp123
 # /usr/include/c++/9/bits/stl_list.h:153: 	this->_M_size = 0;
	li 9,0		 # tmp134,
 # prueba.cpp:11: list<int> priorityList;
	addis 3,2,_ZNSt7__cxx114listIiSaIiEED1Ev@toc@ha	 #,,
 # /usr/include/c++/9/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	std 4,.LANCHOR0+48@toc@l(10)	 # MEM[(struct _List_node_header *)&priorityList].D.37190._M_prev, tmp129
 # /usr/include/c++/9/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	addis 10,2,.LANCHOR0+40@toc@ha	 # tmp141,,,
 # prueba.cpp:11: list<int> priorityList;
	addi 3,3,_ZNSt7__cxx114listIiSaIiEED1Ev@toc@l	 #,,
 # /usr/include/c++/9/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	std 4,.LANCHOR0+40@toc@l(10)	 # MEM[(struct _List_node_header *)&priorityList].D.37190._M_next, tmp129
 # /usr/include/c++/9/bits/stl_list.h:153: 	this->_M_size = 0;
	addis 10,2,.LANCHOR0+56@toc@ha	 # tmp142,,,
	std 9,.LANCHOR0+56@toc@l(10)	 # MEM[(struct _List_node_header *)&priorityList]._M_size, tmp134
 # prueba.cpp:11: list<int> priorityList;
	bl __cxa_atexit	 #
	nop
 # prueba.cpp:84: }
	addi 1,1,64	 #,,
	.cfi_def_cfa_offset 0
	ld 0,16(1)	 #,
	ld 31,-8(1)	 #,
	mtlr 0		 #,
	.cfi_restore 65
	.cfi_restore 31
	blr	
	.long 0
	.byte 0,9,0,1,128,1,0,0
	.cfi_endproc
.LFE2943:
	.size	_GLOBAL__sub_I__Z12priorityListB5cxx11,.-_GLOBAL__sub_I__Z12priorityListB5cxx11
	.section	.init_array,"aw"
	.align 3
	.quad	_GLOBAL__sub_I__Z12priorityListB5cxx11
	.globl listMutex
	.globl _Z12priorityListB5cxx11
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE, __pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t, pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t, pthread_mutex_lock
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	listMutex, @object
	.size	listMutex, 40
listMutex:
	.zero	40
	.type	_Z12priorityListB5cxx11, @object
	.size	_Z12priorityListB5cxx11, 24
_Z12priorityListB5cxx11:
	.zero	24
	.type	_ZStL8__ioinit, @object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 3
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
