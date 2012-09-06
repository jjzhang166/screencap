	.file	"test.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Could not initializing FrameGrabber\0"
	.section	.text$_ZN12FrameGrabberC1EP6HWND__,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12FrameGrabberC1EP6HWND__
	.def	_ZN12FrameGrabberC1EP6HWND__;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12FrameGrabberC1EP6HWND__
_ZN12FrameGrabberC1EP6HWND__:
.LFB549:
	.file 1 "FrameGrabber.h"
	.loc 1 22 0
	.cfi_startproc
	pushq	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI1:
	.cfi_def_cfa_register 6
	pushq	%rdi
	.seh_pushreg	%rdi
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB2:
	.loc 1 22 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
.LBB3:
	.loc 1 24 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_GetDC(%rip), %rax
	.cfi_offset 5, -24
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 26 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L10
.L2:
	.loc 1 28 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_CreateCompatibleDC(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 30 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L11
.L4:
	.loc 1 33 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rax, %rcx
	movq	__imp_GetClientRect(%rip), %rax
	call	*%rax
	.loc 1 34 0
	movl	-24(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 1 35 0
	movl	-20(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, 52(%rax)
	.loc 1 37 0
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	.loc 1 38 0
	movl	$40, -80(%rbp)
	.loc 1 39 0
	movq	16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -76(%rbp)
	.loc 1 40 0
	movq	16(%rbp), %rax
	movl	52(%rax), %eax
	negl	%eax
	movl	%eax, -72(%rbp)
	.loc 1 41 0
	movw	$1, -68(%rbp)
	.loc 1 42 0
	movw	$32, -66(%rbp)
	.loc 1 43 0
	movl	$0, -64(%rbp)
	.loc 1 45 0
	movq	16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-80(%rbp), %rdx
	movl	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rax, %rcx
	movq	__imp_CreateDIBSection(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 47 0
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L12
.L6:
	.loc 1 49 0
	movq	16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_SelectObject(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 51 0
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	nop
.L9:
	.loc 1 56 0
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_DeleteObject(%rip), %rax
	call	*%rax
	jmp	.L7
.L12:
	.loc 1 47 0
	nop
.L7:
	.loc 1 58 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_DeleteDC(%rip), %rax
	call	*%rax
	jmp	.L5
.L11:
	.loc 1 30 0
	nop
.L5:
	.loc 1 60 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_ReleaseDC(%rip), %rax
	call	*%rax
	jmp	.L3
.L10:
	.loc 1 26 0
	nop
.L3:
	.loc 1 62 0
	movl	$8, %ecx
	call	__cxa_allocate_exception
	leaq	.LC0(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$0, %r8d
	leaq	_ZTIPKc(%rip), %rdx
	movq	%rax, %rcx
	call	__cxa_throw
.L13:
	.loc 1 53 0
	nop
.L1:
.LBE3:
.LBE2:
	.loc 1 63 0
	addq	$120, %rsp
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
.LCFI2:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE549:
	.seh_endproc
	.section	.text$_ZN12FrameGrabberD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12FrameGrabberD1Ev
	.def	_ZN12FrameGrabberD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12FrameGrabberD1Ev
_ZN12FrameGrabberD1Ev:
.LFB552:
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI4:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB4:
	.loc 1 67 0
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_SelectObject(%rip), %rax
	call	*%rax
	.loc 1 68 0
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_DeleteObject(%rip), %rax
	call	*%rax
	.loc 1 69 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_DeleteDC(%rip), %rax
	call	*%rax
	.loc 1 70 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_ReleaseDC(%rip), %rax
	call	*%rax
	nop
.LBE4:
	.loc 1 71 0
	addq	$32, %rsp
	popq	%rbp
.LCFI5:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE552:
	.seh_endproc
	.section	.text$_ZNK12FrameGrabber15scanlineSizeGetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK12FrameGrabber15scanlineSizeGetEv
	.def	_ZNK12FrameGrabber15scanlineSizeGetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12FrameGrabber15scanlineSizeGetEv
_ZNK12FrameGrabber15scanlineSizeGetEv:
.LFB553:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI7:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 75 0
	movq	16(%rbp), %rax
	movl	48(%rax), %eax
	sall	$5, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	.loc 1 76 0
	popq	%rbp
.LCFI8:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE553:
	.seh_endproc
	.section	.text$_ZNK12FrameGrabber8widthGetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK12FrameGrabber8widthGetEv
	.def	_ZNK12FrameGrabber8widthGetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12FrameGrabber8widthGetEv
_ZNK12FrameGrabber8widthGetEv:
.LFB554:
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp
.LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI10:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 80 0
	movq	16(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 81 0
	popq	%rbp
.LCFI11:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE554:
	.seh_endproc
	.section	.text$_ZNK12FrameGrabber9heightGetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK12FrameGrabber9heightGetEv
	.def	_ZNK12FrameGrabber9heightGetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12FrameGrabber9heightGetEv
_ZNK12FrameGrabber9heightGetEv:
.LFB555:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI13:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 85 0
	movq	16(%rbp), %rax
	movl	52(%rax), %eax
	.loc 1 86 0
	popq	%rbp
.LCFI14:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE555:
	.seh_endproc
	.section	.text$_ZN12FrameGrabber4grabEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12FrameGrabber4grabEv
	.def	_ZN12FrameGrabber4grabEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12FrameGrabber4grabEv
_ZN12FrameGrabber4grabEv:
.LFB556:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI16:
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 90 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	16(%rbp), %rax
	movl	52(%rax), %edx
	movq	16(%rbp), %rax
	movl	48(%rax), %r8d
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1087111200, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movl	%edx, 32(%rsp)
	movl	%r8d, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_BitBlt(%rip), %rax
	call	*%rax
	.loc 1 91 0
	movq	16(%rbp), %rcx
	call	_ZN12FrameGrabber7dataGetEv
	.loc 1 92 0
	addq	$80, %rsp
	popq	%rbp
.LCFI17:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE556:
	.seh_endproc
	.section	.text$_ZN12FrameGrabber7dataGetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12FrameGrabber7dataGetEv
	.def	_ZN12FrameGrabber7dataGetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12FrameGrabber7dataGetEv
_ZN12FrameGrabber7dataGetEv:
.LFB557:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp
.LCFI18:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI19:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 96 0
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 97 0
	popq	%rbp
.LCFI20:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE557:
	.seh_endproc
	.section	.text$_ZN5Image9initPRowsEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Image9initPRowsEv
	.def	_ZN5Image9initPRowsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Image9initPRowsEv
_ZN5Image9initPRowsEv:
.LFB595:
	.file 2 "Image.h"
	.loc 2 20 0
	.cfi_startproc
	pushq	%rbp
.LCFI21:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI22:
	.cfi_def_cfa_register 6
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB5:
	.loc 2 22 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	.cfi_offset 3, -32
	.cfi_offset 4, -24
	call	_ZNK12FrameGrabber9heightGetEv
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 23 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	.loc 2 24 0
	movl	$0, %eax
	jmp	.L23
.L22:
.LBB6:
	.loc 2 26 0
	movl	$0, -20(%rbp)
	jmp	.L24
.L25:
	.loc 2 28 0 discriminator 2
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	mov	-20(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZN12FrameGrabber7dataGetEv
	movq	%rax, %rbx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber15scanlineSizeGetEv
	imull	-20(%rbp), %eax
	mov	%eax, %eax
	addq	%rbx, %rax
	movq	%rax, (%rsi)
	.loc 2 26 0 discriminator 2
	addl	$1, -20(%rbp)
.L24:
	.loc 2 26 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber9heightGetEv
	movl	%eax, %edx
	sarl	$31, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	-20(%rbp), %eax
	seta	%al
	testb	%al, %al
	jne	.L25
.LBE6:
	.loc 2 30 0 is_stmt 1
	movl	$1, %eax
.L23:
.LBE5:
	.loc 2 31 0
	addq	$48, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
.LCFI23:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE595:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "Could not initialize Image\0"
	.section	.text$_ZN5ImageC1ER12FrameGrabber,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5ImageC1ER12FrameGrabber
	.def	_ZN5ImageC1ER12FrameGrabber;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImageC1ER12FrameGrabber
_ZN5ImageC1ER12FrameGrabber:
.LFB598:
	.loc 2 34 0
	.cfi_startproc
	pushq	%rbp
.LCFI24:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI25:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB7:
	.loc 2 34 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 36 0
	movq	16(%rbp), %rcx
	call	_ZN5Image9initPRowsEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L26
	.loc 2 38 0
	movl	$8, %ecx
	call	__cxa_allocate_exception
	leaq	.LC1(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$0, %r8d
	leaq	_ZTIPKc(%rip), %rdx
	movq	%rax, %rcx
	call	__cxa_throw
	nop
.L26:
.LBE7:
	.loc 2 40 0
	addq	$32, %rsp
	popq	%rbp
.LCFI26:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE598:
	.seh_endproc
	.section	.text$_ZN5Image7rowsGetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Image7rowsGetEv
	.def	_ZN5Image7rowsGetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Image7rowsGetEv
_ZN5Image7rowsGetEv:
.LFB599:
	.loc 2 42 0
	.cfi_startproc
	pushq	%rbp
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI28:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 44 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 45 0
	popq	%rbp
.LCFI29:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE599:
	.seh_endproc
	.section	.text$_ZN5ImageD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5ImageD1Ev
	.def	_ZN5ImageD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImageD1Ev
_ZN5ImageD1Ev:
.LFB603:
	.loc 2 55 0
	.cfi_startproc
	pushq	%rbp
.LCFI30:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI31:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB8:
	.loc 2 57 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	free
	nop
.LBE8:
	.loc 2 58 0
	addq	$32, %rsp
	popq	%rbp
.LCFI32:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE603:
	.seh_endproc
	.section	.text$_ZN6PngCRCC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6PngCRCC1Ev
	.def	_ZN6PngCRCC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6PngCRCC1Ev
_ZN6PngCRCC1Ev:
.LFB606:
	.file 3 "crc.h"
	.loc 3 9 0
	.cfi_startproc
	pushq	%rbp
.LCFI33:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI34:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_setframe	%rbp, 16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB9:
.LBB10:
	.loc 3 13 0
	movl	$0, -8(%rbp)
	jmp	.L32
.L37:
	.loc 3 15 0
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 3 16 0
	movl	$0, -12(%rbp)
	jmp	.L33
.L36:
	.loc 3 18 0
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L34
	.loc 3 19 0
	movl	-4(%rbp), %eax
	shrl	%eax
	xorl	$-306674912, %eax
	movl	%eax, -4(%rbp)
	jmp	.L35
.L34:
	.loc 3 21 0
	shrl	-4(%rbp)
.L35:
	.loc 3 16 0
	addl	$1, -12(%rbp)
.L33:
	.loc 3 16 0 is_stmt 0 discriminator 1
	cmpl	$7, -12(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L36
	.loc 3 23 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
	.loc 3 13 0
	addl	$1, -8(%rbp)
.L32:
	.loc 3 13 0 is_stmt 0 discriminator 1
	cmpl	$255, -8(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L37
.LBE10:
.LBE9:
	.loc 3 25 0 is_stmt 1
	addq	$16, %rsp
	popq	%rbp
.LCFI35:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE606:
	.seh_endproc
	.section	.text$_ZNK6PngCRCclEPKvy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6PngCRCclEPKvy
	.def	_ZNK6PngCRCclEPKvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6PngCRCclEPKvy
_ZNK6PngCRCclEPKvy:
.LFB607:
	.loc 3 27 0
	.cfi_startproc
	pushq	%rbp
.LCFI36:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI37:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 3 29 0
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNK6PngCRC8crc_charEPKhy
	.loc 3 30 0
	addq	$32, %rsp
	popq	%rbp
.LCFI38:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE607:
	.seh_endproc
	.section	.text$_ZNK6PngCRC9crcUpdateEjPKhy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6PngCRC9crcUpdateEjPKhy
	.def	_ZNK6PngCRC9crcUpdateEjPKhy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6PngCRC9crcUpdateEjPKhy
_ZNK6PngCRC9crcUpdateEjPKhy:
.LFB608:
	.loc 3 35 0
	.cfi_startproc
	pushq	%rbp
.LCFI39:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI40:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_setframe	%rbp, 16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
.LBB11:
	.loc 3 38 0
	movq	$0, -8(%rbp)
	jmp	.L40
.L41:
	.loc 3 39 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	24(%rbp), %eax
	movzbl	%al, %edx
	movq	16(%rbp), %rax
	mov	%edx, %edx
	movl	(%rax,%rdx,4), %eax
	movl	24(%rbp), %edx
	shrl	$8, %edx
	xorl	%edx, %eax
	movl	%eax, 24(%rbp)
	.loc 3 38 0 discriminator 2
	addq	$1, -8(%rbp)
.L40:
	.loc 3 38 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	40(%rbp), %rax
	setb	%al
	testb	%al, %al
	jne	.L41
	.loc 3 40 0 is_stmt 1
	movl	24(%rbp), %eax
.LBE11:
	.loc 3 41 0
	addq	$16, %rsp
	popq	%rbp
.LCFI41:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE608:
	.seh_endproc
	.section	.text$_ZNK6PngCRC8crc_charEPKhy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6PngCRC8crc_charEPKhy
	.def	_ZNK6PngCRC8crc_charEPKhy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6PngCRC8crc_charEPKhy
_ZNK6PngCRC8crc_charEPKhy:
.LFB609:
	.loc 3 43 0
	.cfi_startproc
	pushq	%rbp
.LCFI42:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI43:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 3 45 0
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$-1, %edx
	movq	16(%rbp), %rcx
	call	_ZNK6PngCRC9crcUpdateEjPKhy
	notl	%eax
	.loc 3 46 0
	addq	$32, %rsp
	popq	%rbp
.LCFI44:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE609:
	.seh_endproc
	.text
	.globl	_Z6assignPvi
	.def	_Z6assignPvi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6assignPvi
_Z6assignPvi:
.LFB965:
	.file 4 "test.cpp"
	.loc 4 16 0
	.cfi_startproc
	pushq	%rbp
.LCFI45:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI46:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_setframe	%rbp, 16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
.LBB12:
	.loc 4 17 0
	leaq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 18 0
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 4 19 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 20 0
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 4 21 0
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	.loc 4 22 0
	movq	-16(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
.LBE12:
	.loc 4 23 0
	addq	$16, %rsp
	popq	%rbp
.LCFI47:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE965:
	.seh_endproc
	.section	.text$_Z10swap_bytesj,"x"
	.linkonce discard
	.globl	_Z10swap_bytesj
	.def	_Z10swap_bytesj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10swap_bytesj
_Z10swap_bytesj:
.LFB966:
	.loc 4 26 0
	.cfi_startproc
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI49:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	.loc 4 27 0
	movl	16(%rbp), %eax
/APP
 # 27 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%rbp)
	.loc 4 28 0
	movl	16(%rbp), %eax
	.loc 4 29 0
	popq	%rbp
.LCFI50:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE966:
	.seh_endproc
	.text
	.globl	_Z11filterApplyPKPKhPcii
	.def	_Z11filterApplyPKPKhPcii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11filterApplyPKPKhPcii
_Z11filterApplyPKPKhPcii:
.LFB967:
	.loc 4 34 0
	.cfi_startproc
	pushq	%rbp
.LCFI51:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI52:
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
.LBB13:
	.loc 4 36 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14:
	.loc 4 37 0
	movl	$0, -12(%rbp)
	jmp	.L46
.L49:
.LBB15:
	.loc 4 40 0
	movq	24(%rbp), %rax
	movb	$0, (%rax)
	.loc 4 41 0
	addq	$1, 24(%rbp)
	.loc 4 42 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB16:
	.loc 4 43 0
	movl	$0, -28(%rbp)
	jmp	.L47
.L48:
	.loc 4 46 0 discriminator 2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	shrl	$8, %eax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_Z6assignPvi
	.loc 4 47 0 discriminator 2
	addq	$3, 24(%rbp)
	.loc 4 48 0 discriminator 2
	addq	$4, -24(%rbp)
	.loc 4 43 0 discriminator 2
	addl	$1, -28(%rbp)
.L47:
	.loc 4 43 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	32(%rbp), %eax
	setl	%al
	testb	%al, %al
	jne	.L48
.LBE16:
	.loc 4 50 0 is_stmt 1
	addq	$8, -8(%rbp)
.LBE15:
	.loc 4 37 0
	addl	$1, -12(%rbp)
.L46:
	.loc 4 37 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	40(%rbp), %eax
	setl	%al
	testb	%al, %al
	jne	.L49
.LBE14:
.LBE13:
	.loc 4 52 0 is_stmt 1
	addq	$64, %rsp
	popq	%rbp
.LCFI53:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE967:
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "1.2.7\0"
.LC3:
	.ascii "%u\12\0"
	.text
	.globl	_Z8compressPKcPcy
	.def	_Z8compressPKcPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8compressPKcPcy
_Z8compressPKcPcy:
.LFB968:
	.loc 4 55 0
	.cfi_startproc
	pushq	%rbp
.LCFI54:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI55:
	.cfi_def_cfa_register 6
	pushq	%rdi
	.seh_pushreg	%rdi
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_setframe	%rbp, 176
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.LBB17:
	.loc 4 57 0
	leaq	-112(%rbp), %rax
	movq	%rax, %r8
	movl	$0, %eax
	movl	$11, %edx
	movq	%r8, %rdi
	.cfi_offset 5, -24
	movq	%rdx, %rcx
	rep stosq
	.loc 4 59 0
	leaq	-112(%rbp), %rax
	movl	$88, 56(%rsp)
	leaq	.LC2(%rip), %rdx
	movq	%rdx, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$9, 32(%rsp)
	movl	$15, %r9d
	movl	$8, %r8d
	movl	$6, %edx
	movq	%rax, %rcx
	call	deflateInit2_
	.loc 4 61 0
	movq	32(%rbp), %rax
	movl	%eax, -104(%rbp)
	.loc 4 62 0
	movq	16(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 4 63 0
	movq	32(%rbp), %rax
	movl	%eax, -88(%rbp)
	.loc 4 64 0
	movq	24(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 4 65 0
	leaq	-112(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rcx
	call	deflate
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	.loc 4 67 0
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	deflateEnd
	.loc 4 68 0
	movl	-84(%rbp), %eax
	mov	%eax, %eax
.LBE17:
	.loc 4 69 0
	addq	$168, %rsp
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
.LCFI56:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE968:
	.seh_endproc
	.globl	_Z13Chunk_sizeSetPcj
	.def	_Z13Chunk_sizeSetPcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13Chunk_sizeSetPcj
_Z13Chunk_sizeSetPcj:
.LFB969:
	.loc 4 80 0
	.cfi_startproc
	pushq	%rbp
.LCFI57:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI58:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 4 80 0
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_Z6assignPvi
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI59:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE969:
	.seh_endproc
	.globl	_Z11Chunk_IDSetPcj
	.def	_Z11Chunk_IDSetPcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11Chunk_IDSetPcj
_Z11Chunk_IDSetPcj:
.LFB970:
	.loc 4 83 0
	.cfi_startproc
	pushq	%rbp
.LCFI60:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI61:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 4 83 0
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	movq	16(%rbp), %rdx
	leaq	4(%rdx), %rcx
	movl	%eax, %edx
	call	_Z6assignPvi
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI62:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE970:
	.seh_endproc
	.globl	_Z12Chunk_CRCSetPcRK6PngCRCj
	.def	_Z12Chunk_CRCSetPcRK6PngCRCj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12Chunk_CRCSetPcRK6PngCRCj
_Z12Chunk_CRCSetPcRK6PngCRCj:
.LFB971:
	.loc 4 86 0
	.cfi_startproc
	pushq	%rbp
.LCFI63:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI64:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	.loc 4 87 0
	movl	32(%rbp), %eax
	addl	$4, %eax
	mov	%eax, %ecx
	movq	16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNK6PngCRCclEPKvy
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	movl	%eax, %edx
	mov	32(%rbp), %eax
	addq	$8, %rax
	addq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_Z6assignPvi
	nop
	.loc 4 88 0
	addq	$32, %rsp
	popq	%rbp
.LCFI65:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE971:
	.seh_endproc
	.globl	_Z13IHDR_widthSetPci
	.def	_Z13IHDR_widthSetPci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13IHDR_widthSetPci
_Z13IHDR_widthSetPci:
.LFB972:
	.loc 4 96 0
	.cfi_startproc
	pushq	%rbp
.LCFI66:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI67:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 4 96 0
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	movq	16(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movl	%eax, %edx
	call	_Z6assignPvi
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI68:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE972:
	.seh_endproc
	.globl	_Z14IHDR_heightSetPci
	.def	_Z14IHDR_heightSetPci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14IHDR_heightSetPci
_Z14IHDR_heightSetPci:
.LFB973:
	.loc 4 99 0
	.cfi_startproc
	pushq	%rbp
.LCFI69:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI70:
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 4 99 0
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10swap_bytesj
	movq	16(%rbp), %rdx
	leaq	12(%rdx), %rcx
	movl	%eax, %edx
	call	_Z6assignPvi
	nop
	addq	$32, %rsp
	popq	%rbp
.LCFI71:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE973:
	.seh_endproc
	.globl	_Z16IHDR_bitDepthSetPcc
	.def	_Z16IHDR_bitDepthSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16IHDR_bitDepthSetPcc
_Z16IHDR_bitDepthSetPcc:
.LFB974:
	.loc 4 102 0
	.cfi_startproc
	pushq	%rbp
.LCFI72:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI73:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 102 0
	movq	16(%rbp), %rax
	leaq	16(%rax), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	popq	%rbp
.LCFI74:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE974:
	.seh_endproc
	.globl	_Z17IHDR_colorTypeSetPcc
	.def	_Z17IHDR_colorTypeSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17IHDR_colorTypeSetPcc
_Z17IHDR_colorTypeSetPcc:
.LFB975:
	.loc 4 105 0
	.cfi_startproc
	pushq	%rbp
.LCFI75:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI76:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 105 0
	movq	16(%rbp), %rax
	leaq	17(%rax), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	popq	%rbp
.LCFI77:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE975:
	.seh_endproc
	.globl	_Z25IHDR_compressionMethodSetPcc
	.def	_Z25IHDR_compressionMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z25IHDR_compressionMethodSetPcc
_Z25IHDR_compressionMethodSetPcc:
.LFB976:
	.loc 4 108 0
	.cfi_startproc
	pushq	%rbp
.LCFI78:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI79:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 108 0
	movq	16(%rbp), %rax
	leaq	18(%rax), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	popq	%rbp
.LCFI80:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE976:
	.seh_endproc
	.globl	_Z20IHDR_filterMethodSetPcc
	.def	_Z20IHDR_filterMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z20IHDR_filterMethodSetPcc
_Z20IHDR_filterMethodSetPcc:
.LFB977:
	.loc 4 111 0
	.cfi_startproc
	pushq	%rbp
.LCFI81:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI82:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 111 0
	movq	16(%rbp), %rax
	leaq	19(%rax), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	popq	%rbp
.LCFI83:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE977:
	.seh_endproc
	.globl	_Z23IHDR_interlaceMethodSetPcc
	.def	_Z23IHDR_interlaceMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23IHDR_interlaceMethodSetPcc
_Z23IHDR_interlaceMethodSetPcc:
.LFB978:
	.loc 4 114 0
	.cfi_startproc
	pushq	%rbp
.LCFI84:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
.LCFI85:
	.cfi_def_cfa_register 6
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 114 0
	movq	16(%rbp), %rax
	leaq	20(%rax), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	popq	%rbp
.LCFI86:
	.cfi_def_cfa 7, 8
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE978:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC4:
	.ascii "wb\0"
.LC5:
	.ascii "test.png\0"
	.def	__gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB979:
	.loc 4 119 0
	.cfi_startproc
	.cfi_personality 0x9b,.LDFCM0
	.cfi_lsda 0x1b,.LLSDA979
	pushq	%rbp
.LCFI87:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.seh_pushreg	%rbp
	pushq	%r15
.LCFI88:
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
	.seh_pushreg	%r15
	pushq	%r14
.LCFI89:
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
	.seh_pushreg	%r14
	pushq	%r13
.LCFI90:
	.cfi_def_cfa_offset 40
	.cfi_offset 13, -40
	.seh_pushreg	%r13
	pushq	%r12
.LCFI91:
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -48
	.seh_pushreg	%r12
	pushq	%rdi
.LCFI92:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	.seh_pushreg	%rdi
	pushq	%rsi
.LCFI93:
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	.seh_pushreg	%rsi
	pushq	%rbx
.LCFI94:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -72
	.seh_pushreg	%rbx
	subq	$1544, %rsp
.LCFI95:
	.cfi_def_cfa_offset 1616
	.seh_stackalloc	1544
	leaq	128(%rsp), %rbp
.LCFI96:
	.cfi_def_cfa 6, 1488
	movaps	%xmm6, 1248(%rbp)
	.seh_savexmm	%xmm6, 1376
	movaps	%xmm7, 1264(%rbp)
	.seh_savexmm	%xmm7, 1392
	movaps	%xmm8, 1280(%rbp)
	.seh_savexmm	%xmm8, 1408
	movaps	%xmm9, 1296(%rbp)
	.seh_savexmm	%xmm9, 1424
	movaps	%xmm10, 1312(%rbp)
	.seh_savexmm	%xmm10, 1440
	movaps	%xmm11, 1328(%rbp)
	.seh_savexmm	%xmm11, 1456
	movaps	%xmm12, 1344(%rbp)
	.seh_savexmm	%xmm12, 1472
	movaps	%xmm13, 1360(%rbp)
	.seh_savexmm	%xmm13, 1488
	movaps	%xmm14, 1376(%rbp)
	.seh_savexmm	%xmm14, 1504
	movaps	%xmm15, 1392(%rbp)
	.seh_savexmm	%xmm15, 1520
	.seh_setframe	%rbp, 128
	.seh_endprologue
	leaq	__gxx_personality_sj0(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LLSDA979(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	%rbp, %rax
	leaq	1248(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	.L64(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	.cfi_offset 32, -96
	.cfi_offset 31, -112
	.cfi_offset 30, -128
	.cfi_offset 29, -144
	.cfi_offset 28, -160
	.cfi_offset 27, -176
	.cfi_offset 26, -192
	.cfi_offset 25, -208
	.cfi_offset 24, -224
	.cfi_offset 23, -240
	call	_Unwind_SjLj_Register
	.loc 4 119 0
	call	__main
.LBB18:
	.loc 4 120 0
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6PngCRCC1Ev
	.loc 4 121 0
	movb	$-119, 1200(%rbp)
	movb	$80, 1201(%rbp)
	movb	$78, 1202(%rbp)
	movb	$71, 1203(%rbp)
	movb	$13, 1204(%rbp)
	movb	$10, 1205(%rbp)
	movb	$26, 1206(%rbp)
	movb	$10, 1207(%rbp)
	.loc 4 124 0
	leaq	1184(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_Z13Chunk_sizeSetPcj
	.loc 4 125 0
	leaq	1184(%rbp), %rax
	movl	$1229278788, %edx
	movq	%rax, %rcx
	call	_Z11Chunk_IDSetPcj
	.loc 4 126 0
	leaq	48(%rbp), %rdx
	leaq	1184(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	.loc 4 128 0
	movq	__imp_GetDesktopWindow(%rip), %rax
	movl	$-1, -56(%rbp)
	call	*%rax
	movq	%rax, %rdx
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN12FrameGrabberC1EP6HWND__
	.loc 4 129 0
	leaq	1072(%rbp), %rdx
	leaq	1168(%rbp), %rax
	movl	$1, -56(%rbp)
	movq	%rax, %rcx
	call	_ZN5ImageC1ER12FrameGrabber
	.loc 4 130 0
	leaq	1072(%rbp), %rax
	movl	$2, -56(%rbp)
	movq	%rax, %rcx
	call	_ZN12FrameGrabber4grabEv
	.loc 4 133 0
	leaq	1136(%rbp), %rax
	movl	$13, %edx
	movq	%rax, %rcx
	call	_Z13Chunk_sizeSetPcj
	.loc 4 134 0
	leaq	1136(%rbp), %rax
	movl	$1229472850, %edx
	movq	%rax, %rcx
	call	_Z11Chunk_IDSetPcj
	.loc 4 135 0
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber8widthGetEv
	movl	%eax, %edx
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	_Z13IHDR_widthSetPci
	.loc 4 136 0
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber9heightGetEv
	movl	%eax, %edx
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	_Z14IHDR_heightSetPci
	.loc 4 137 0
	leaq	1136(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_Z16IHDR_bitDepthSetPcc
	.loc 4 138 0
	leaq	1136(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_Z17IHDR_colorTypeSetPcc
	.loc 4 139 0
	leaq	1136(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_Z25IHDR_compressionMethodSetPcc
	.loc 4 140 0
	leaq	1136(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_Z20IHDR_filterMethodSetPcc
	.loc 4 141 0
	leaq	1136(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_Z23IHDR_interlaceMethodSetPcc
	.loc 4 142 0
	leaq	48(%rbp), %rdx
	leaq	1136(%rbp), %rax
	movl	$13, %r8d
	movq	%rax, %rcx
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	.loc 4 145 0
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber8widthGetEv
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, 44(%rbp)
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber9heightGetEv
	imull	44(%rbp), %eax
	cltq
	movq	%rax, 1240(%rbp)
	.loc 4 146 0
	movq	1240(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 1232(%rbp)
	.loc 4 147 0
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber9heightGetEv
	movl	%eax, 40(%rbp)
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK12FrameGrabber8widthGetEv
	movl	%eax, -68(%rbp)
	leaq	1168(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Image7rowsGetEv
	movq	1232(%rbp), %rdx
	movl	40(%rbp), %r9d
	movl	-68(%rbp), %r8d
	movq	%rax, %rcx
	call	_Z11filterApplyPKPKhPcii
	.loc 4 148 0
	movq	1240(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 1224(%rbp)
	.loc 4 150 0
	movq	1224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	1240(%rbp), %rcx
	movq	1232(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_Z8compressPKcPcy
	movl	%eax, 1220(%rbp)
	.loc 4 151 0
	movl	1220(%rbp), %edx
	movq	1224(%rbp), %rax
	movq	%rax, %rcx
	call	_Z13Chunk_sizeSetPcj
	.loc 4 152 0
	movq	1224(%rbp), %rax
	movl	$1229209940, %edx
	movq	%rax, %rcx
	call	_Z11Chunk_IDSetPcj
	.loc 4 153 0
	movl	1220(%rbp), %ecx
	leaq	48(%rbp), %rdx
	movq	1224(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	.loc 4 156 0
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rcx
	call	fopen
	.loc 4 156 0 is_stmt 0 discriminator 1
	movq	%rax, 1208(%rbp)
	.loc 4 158 0 is_stmt 1 discriminator 1
	movq	1208(%rbp), %rdx
	leaq	1200(%rbp), %rax
	movq	%rdx, %r9
	movl	$8, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 4 159 0
	movq	1208(%rbp), %rdx
	leaq	1136(%rbp), %rax
	movq	%rdx, %r9
	movl	$25, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 4 160 0
	movl	1220(%rbp), %eax
	movslq	%eax, %rdx
	movq	1208(%rbp), %rcx
	movq	1224(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 4 161 0
	movq	1208(%rbp), %rdx
	leaq	1184(%rbp), %rax
	movq	%rdx, %r9
	movl	$12, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 4 162 0
	movq	1224(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 4 163 0
	movq	1208(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 4 165 0
	movl	$0, -72(%rbp)
	.loc 4 129 0
	leaq	1168(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5ImageD1Ev
	.loc 4 128 0
	leaq	1072(%rbp), %rax
	movl	$-1, -56(%rbp)
	movq	%rax, %rcx
	call	_ZN12FrameGrabberD1Ev
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_Unwind_SjLj_Unregister
.LBE18:
	.loc 4 166 0
	movl	-76(%rbp), %eax
	movaps	1248(%rbp), %xmm6
	movaps	1264(%rbp), %xmm7
	movaps	1280(%rbp), %xmm8
	movaps	1296(%rbp), %xmm9
	movaps	1312(%rbp), %xmm10
	movaps	1328(%rbp), %xmm11
	movaps	1344(%rbp), %xmm12
	movaps	1360(%rbp), %xmm13
	movaps	1376(%rbp), %xmm14
	movaps	1392(%rbp), %xmm15
	addq	$1544, %rsp
	.cfi_remember_state
	.cfi_restore 32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
.LCFI97:
	.cfi_def_cfa 7, -1480
	.cfi_restore 6
	ret
.L66:
.LCFI98:
	.cfi_restore_state
	movq	%rdx, -96(%rbp)
.LBB19:
	.loc 4 129 0
	leaq	1168(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5ImageD1Ev
	movq	-96(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	jmp	.L63
.L64:
	leaq	-1248(%rbp), %rbp
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	.L65
	cmpl	$1, %eax
	je	.L66
		.word	0x0b0f
.L65:
	movq	%rdx, -88(%rbp)
.L63:
	.loc 4 128 0
	leaq	1072(%rbp), %rax
	movl	$0, -56(%rbp)
	movq	%rax, %rcx
	call	_ZN12FrameGrabberD1Ev
	movq	-88(%rbp), %rax
	movl	$-1, -56(%rbp)
	movq	%rax, %rcx
	call	_Unwind_SjLj_Resume
	nop
.LBE19:
	.cfi_endproc
.LFE979:
	.section	.gcc_except_table,"w"
.LLSDA979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE979-.LLSDACSB979
.LLSDACSB979:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
.LLSDACSE979:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
_ZL17CHUNK_OFFSET_SIZE:
	.space 8
	.align 8
_ZL15CHUNK_OFFSET_ID:
	.quad	4
	.align 8
_ZL17CHUNK_OFFSET_DATA:
	.quad	8
	.align 8
_ZL15CHUNK_BASE_SIZE:
	.quad	12
	.align 8
_ZL9IHDR_SIZE:
	.quad	13
	.align 4
_ZL18IHDR_COLORTYPE_RGB:
	.long	2
	.text
.Letext0:
	.file 5 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/_mingw.h"
	.file 6 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/windef.h"
	.file 7 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/winnt.h"
	.file 8 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/stdlib.h"
	.file 9 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/wingdi.h"
	.file 10 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/stdio.h"
	.file 11 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/cstdio"
	.file 12 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/cstring"
	.file 13 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/cstdlib"
	.file 14 "FileOut.h"
	.file 15 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/string.h"
	.file 16 "<built-in>"
	.file 17 "TmpBuffer.h"
	.file 18 "D:/msys-win64/include/zconf.h"
	.file 19 "D:/msys-win64/include/zlib.h"
	.file 20 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/../../../../x86_64-w64-mingw32/include/stdint.h"
	.file 21 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/debug/debug.h"
	.file 22 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/ext/numeric_traits.h"
	.file 23 "d:/bin-win64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/4.6.1/include/c++/new"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2725
	.word	0x2
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++ 4.6.1\0"
	.byte	0x4
	.ascii "test.cpp\0"
	.ascii "D:\\home\\torbjorr\\Skrivbord\\screencap\0"
	.quad	0
	.quad	0
	.secrel32	.Ldebug_ranges0+0x30
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x5
	.word	0x184
	.long	0x78
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x61
	.uleb128 0x4
	.byte	0x8
	.long	0xd8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x10e
	.uleb128 0x5
	.long	0x113
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.ascii "BYTE\0"
	.byte	0x6
	.byte	0x71
	.long	0x113
	.uleb128 0x7
	.ascii "WORD\0"
	.byte	0x6
	.byte	0x72
	.long	0xa3
	.uleb128 0x7
	.ascii "DWORD\0"
	.byte	0x6
	.byte	0x73
	.long	0xf3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x15a
	.uleb128 0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x113
	.uleb128 0x7
	.ascii "LONG\0"
	.byte	0x7
	.byte	0xb3
	.long	0xc0
	.uleb128 0x9
	.ascii "_div_t\0"
	.byte	0x8
	.byte	0x8
	.byte	0x2e
	.long	0x1b6
	.uleb128 0xa
	.ascii "quot\0"
	.byte	0x8
	.byte	0x2f
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii "rem\0"
	.byte	0x8
	.byte	0x30
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.ascii "div_t\0"
	.byte	0x8
	.byte	0x31
	.long	0x189
	.uleb128 0x9
	.ascii "_ldiv_t\0"
	.byte	0x8
	.byte	0x8
	.byte	0x33
	.long	0x1f1
	.uleb128 0xa
	.ascii "quot\0"
	.byte	0x8
	.byte	0x34
	.long	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii "rem\0"
	.byte	0x8
	.byte	0x35
	.long	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.ascii "ldiv_t\0"
	.byte	0x8
	.byte	0x36
	.long	0x1c3
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x21e
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x8
	.long	0x225
	.uleb128 0x5
	.long	0xd8
	.uleb128 0xc
	.byte	0x10
	.byte	0x8
	.word	0x251
	.ascii "7lldiv_t\0"
	.long	0x25c
	.uleb128 0xd
	.ascii "quot\0"
	.byte	0x8
	.word	0x251
	.long	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "rem\0"
	.byte	0x8
	.word	0x251
	.long	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii "lldiv_t\0"
	.byte	0x8
	.word	0x251
	.long	0x22a
	.uleb128 0xe
	.long	0x61
	.long	0x27c
	.uleb128 0xf
	.long	0x78
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.ascii "HWND__\0"
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.long	0x29a
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x6
	.byte	0xa6
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.ascii "HWND\0"
	.byte	0x6
	.byte	0xa6
	.long	0x2a6
	.uleb128 0x4
	.byte	0x8
	.long	0x27c
	.uleb128 0x7
	.ascii "HGDIOBJ\0"
	.byte	0x6
	.byte	0xbf
	.long	0x124
	.uleb128 0x9
	.ascii "HBITMAP__\0"
	.byte	0x4
	.byte	0x6
	.byte	0xc5
	.long	0x2dc
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x6
	.byte	0xc5
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.ascii "HBITMAP\0"
	.byte	0x6
	.byte	0xc5
	.long	0x2eb
	.uleb128 0x4
	.byte	0x8
	.long	0x2bb
	.uleb128 0x9
	.ascii "HDC__\0"
	.byte	0x4
	.byte	0x6
	.byte	0xc8
	.long	0x30e
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x6
	.byte	0xc8
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.ascii "HDC\0"
	.byte	0x6
	.byte	0xc8
	.long	0x319
	.uleb128 0x4
	.byte	0x8
	.long	0x2f1
	.uleb128 0x9
	.ascii "tagRECT\0"
	.byte	0x10
	.byte	0x6
	.byte	0xe5
	.long	0x36e
	.uleb128 0xa
	.ascii "left\0"
	.byte	0x6
	.byte	0xe6
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii "top\0"
	.byte	0x6
	.byte	0xe7
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.ascii "right\0"
	.byte	0x6
	.byte	0xe8
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.ascii "bottom\0"
	.byte	0x6
	.byte	0xe9
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.ascii "RECT\0"
	.byte	0x6
	.byte	0xea
	.long	0x31f
	.uleb128 0x11
	.ascii "tagRGBQUAD\0"
	.byte	0x4
	.byte	0x9
	.word	0x1c4
	.long	0x3df
	.uleb128 0xd
	.ascii "rgbBlue\0"
	.byte	0x9
	.word	0x1c5
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "rgbGreen\0"
	.byte	0x9
	.word	0x1c6
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.ascii "rgbRed\0"
	.byte	0x9
	.word	0x1c7
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.ascii "rgbReserved\0"
	.byte	0x9
	.word	0x1c8
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.ascii "tagBITMAPINFOHEADER\0"
	.byte	0x28
	.byte	0x9
	.word	0x227
	.long	0x4f5
	.uleb128 0xd
	.ascii "biSize\0"
	.byte	0x9
	.word	0x228
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "biWidth\0"
	.byte	0x9
	.word	0x229
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "biHeight\0"
	.byte	0x9
	.word	0x22a
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "biPlanes\0"
	.byte	0x9
	.word	0x22b
	.long	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "biBitCount\0"
	.byte	0x9
	.word	0x22c
	.long	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.ascii "biCompression\0"
	.byte	0x9
	.word	0x22d
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "biSizeImage\0"
	.byte	0x9
	.word	0x22e
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "biXPelsPerMeter\0"
	.byte	0x9
	.word	0x22f
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "biYPelsPerMeter\0"
	.byte	0x9
	.word	0x230
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "biClrUsed\0"
	.byte	0x9
	.word	0x231
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "biClrImportant\0"
	.byte	0x9
	.word	0x232
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.ascii "BITMAPINFOHEADER\0"
	.byte	0x9
	.word	0x233
	.long	0x3df
	.uleb128 0x11
	.ascii "tagBITMAPINFO\0"
	.byte	0x2c
	.byte	0x9
	.word	0x271
	.long	0x550
	.uleb128 0xd
	.ascii "bmiHeader\0"
	.byte	0x9
	.word	0x272
	.long	0x4f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "bmiColors\0"
	.byte	0x9
	.word	0x273
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xe
	.long	0x37a
	.long	0x560
	.uleb128 0xf
	.long	0x78
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "BITMAPINFO\0"
	.byte	0x9
	.word	0x274
	.long	0x50e
	.uleb128 0x4
	.byte	0x8
	.long	0xcc
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0x38
	.byte	0x1
	.byte	0x7
	.long	0x7d3
	.uleb128 0x13
	.ascii "source_window\0"
	.byte	0x1
	.byte	0xb
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x13
	.ascii "source_context\0"
	.byte	0x1
	.byte	0xc
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x13
	.ascii "sink_context\0"
	.byte	0x1
	.byte	0xd
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x13
	.ascii "sink_bitmap\0"
	.byte	0x1
	.byte	0xe
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x13
	.ascii "sink_bitmap_old\0"
	.byte	0x1
	.byte	0xf
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x13
	.ascii "sink_data\0"
	.byte	0x1
	.byte	0x10
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x13
	.ascii "width\0"
	.byte	0x1
	.byte	0x11
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x14
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x12
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x15
	.ascii "BITS_PER_PIXEL\0"
	.byte	0x1
	.byte	0x13
	.long	0x7d3
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x20
	.uleb128 0x16
	.byte	0x1
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x662
	.long	0x66e
	.uleb128 0x17
	.long	0x7d8
	.byte	0x1
	.uleb128 0x18
	.long	0x29a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii "~FrameGrabber\0"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x689
	.long	0x696
	.uleb128 0x17
	.long	0x7d8
	.byte	0x1
	.uleb128 0x17
	.long	0xb9
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "scanlineSizeGet\0"
	.byte	0x1
	.byte	0x49
	.ascii "_ZNK12FrameGrabber15scanlineSizeGetEv\0"
	.long	0xb9
	.byte	0x1
	.long	0x6dd
	.long	0x6e4
	.uleb128 0x17
	.long	0x7de
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "widthGet\0"
	.byte	0x1
	.byte	0x4e
	.ascii "_ZNK12FrameGrabber8widthGetEv\0"
	.long	0xb9
	.byte	0x1
	.long	0x71c
	.long	0x723
	.uleb128 0x17
	.long	0x7de
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "heightGet\0"
	.byte	0x1
	.byte	0x53
	.ascii "_ZNK12FrameGrabber9heightGetEv\0"
	.long	0xb9
	.byte	0x1
	.long	0x75d
	.long	0x764
	.uleb128 0x17
	.long	0x7de
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "grab\0"
	.byte	0x1
	.byte	0x58
	.ascii "_ZN12FrameGrabber4grabEv\0"
	.long	0x177
	.byte	0x1
	.long	0x793
	.long	0x79a
	.uleb128 0x17
	.long	0x7d8
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii "dataGet\0"
	.byte	0x1
	.byte	0x5e
	.ascii "_ZN12FrameGrabber7dataGetEv\0"
	.long	0x177
	.byte	0x1
	.long	0x7cb
	.uleb128 0x17
	.long	0x7d8
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xb9
	.uleb128 0x4
	.byte	0x8
	.long	0x579
	.uleb128 0x4
	.byte	0x8
	.long	0x7e4
	.uleb128 0x5
	.long	0x579
	.uleb128 0x9
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0xa
	.byte	0x1a
	.long	0x880
	.uleb128 0xa
	.ascii "_ptr\0"
	.byte	0xa
	.byte	0x1b
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii "_cnt\0"
	.byte	0xa
	.byte	0x1c
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.ascii "_base\0"
	.byte	0xa
	.byte	0x1d
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii "_flag\0"
	.byte	0xa
	.byte	0x1e
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.ascii "_file\0"
	.byte	0xa
	.byte	0x1f
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.ascii "_charbuf\0"
	.byte	0xa
	.byte	0x20
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.ascii "_bufsiz\0"
	.byte	0xa
	.byte	0x21
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.ascii "_tmpfname\0"
	.byte	0xa
	.byte	0x22
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.ascii "FILE\0"
	.byte	0xa
	.byte	0x24
	.long	0x7e9
	.uleb128 0x7
	.ascii "fpos_t\0"
	.byte	0xa
	.byte	0x67
	.long	0x92
	.uleb128 0x1c
	.ascii "std\0"
	.byte	0x10
	.byte	0
	.long	0xa94
	.uleb128 0x1d
	.byte	0xb
	.byte	0x5e
	.long	0x880
	.uleb128 0x1d
	.byte	0xb
	.byte	0x5f
	.long	0x88c
	.uleb128 0x1d
	.byte	0xb
	.byte	0x61
	.long	0xa94
	.uleb128 0x1d
	.byte	0xb
	.byte	0x62
	.long	0xab2
	.uleb128 0x1d
	.byte	0xb
	.byte	0x63
	.long	0xacc
	.uleb128 0x1d
	.byte	0xb
	.byte	0x64
	.long	0xae4
	.uleb128 0x1d
	.byte	0xb
	.byte	0x65
	.long	0xafe
	.uleb128 0x1d
	.byte	0xb
	.byte	0x66
	.long	0xb18
	.uleb128 0x1d
	.byte	0xb
	.byte	0x67
	.long	0xb31
	.uleb128 0x1d
	.byte	0xb
	.byte	0x68
	.long	0xb57
	.uleb128 0x1d
	.byte	0xb
	.byte	0x69
	.long	0xb7a
	.uleb128 0x1d
	.byte	0xb
	.byte	0x6d
	.long	0xba3
	.uleb128 0x1d
	.byte	0xb
	.byte	0x6e
	.long	0xbcb
	.uleb128 0x1d
	.byte	0xb
	.byte	0x70
	.long	0xbf0
	.uleb128 0x1d
	.byte	0xb
	.byte	0x71
	.long	0xc13
	.uleb128 0x1d
	.byte	0xb
	.byte	0x72
	.long	0xc3e
	.uleb128 0x1d
	.byte	0xb
	.byte	0x74
	.long	0xc57
	.uleb128 0x1d
	.byte	0xb
	.byte	0x75
	.long	0xc6f
	.uleb128 0x1d
	.byte	0xb
	.byte	0x76
	.long	0xc80
	.uleb128 0x1d
	.byte	0xb
	.byte	0x77
	.long	0xc98
	.uleb128 0x1d
	.byte	0xb
	.byte	0x7c
	.long	0xcaf
	.uleb128 0x1d
	.byte	0xb
	.byte	0x7d
	.long	0xcc9
	.uleb128 0x1d
	.byte	0xb
	.byte	0x7e
	.long	0xce8
	.uleb128 0x1d
	.byte	0xb
	.byte	0x80
	.long	0xcfe
	.uleb128 0x1d
	.byte	0xb
	.byte	0x81
	.long	0xd19
	.uleb128 0x1d
	.byte	0xb
	.byte	0x84
	.long	0xd44
	.uleb128 0x1d
	.byte	0xb
	.byte	0x85
	.long	0xd56
	.uleb128 0x1d
	.byte	0xb
	.byte	0x86
	.long	0xd71
	.uleb128 0x1d
	.byte	0xc
	.byte	0x54
	.long	0xe64
	.uleb128 0x1d
	.byte	0xc
	.byte	0x57
	.long	0xe84
	.uleb128 0x1d
	.byte	0xc
	.byte	0x5d
	.long	0xea0
	.uleb128 0x1d
	.byte	0xc
	.byte	0x5e
	.long	0xebf
	.uleb128 0x1d
	.byte	0xd
	.byte	0x66
	.long	0x1b6
	.uleb128 0x1d
	.byte	0xd
	.byte	0x67
	.long	0x1f1
	.uleb128 0x1d
	.byte	0xd
	.byte	0x6b
	.long	0xee4
	.uleb128 0x1d
	.byte	0xd
	.byte	0x6c
	.long	0xeff
	.uleb128 0x1d
	.byte	0xd
	.byte	0x6d
	.long	0xf18
	.uleb128 0x1d
	.byte	0xd
	.byte	0x6e
	.long	0xf31
	.uleb128 0x1d
	.byte	0xd
	.byte	0x6f
	.long	0xf4a
	.uleb128 0x1d
	.byte	0xd
	.byte	0x71
	.long	0xf94
	.uleb128 0x1d
	.byte	0xd
	.byte	0x74
	.long	0xfb1
	.uleb128 0x1d
	.byte	0xd
	.byte	0x76
	.long	0xfcc
	.uleb128 0x1d
	.byte	0xd
	.byte	0x79
	.long	0xfea
	.uleb128 0x1d
	.byte	0xd
	.byte	0x7a
	.long	0x1009
	.uleb128 0x1d
	.byte	0xd
	.byte	0x7b
	.long	0x1030
	.uleb128 0x1d
	.byte	0xd
	.byte	0x7d
	.long	0x1055
	.uleb128 0x1d
	.byte	0xd
	.byte	0x7e
	.long	0x107a
	.uleb128 0x1d
	.byte	0xd
	.byte	0x80
	.long	0x1089
	.uleb128 0x1d
	.byte	0xd
	.byte	0x81
	.long	0x109f
	.uleb128 0x1d
	.byte	0xd
	.byte	0x82
	.long	0x10bf
	.uleb128 0x1d
	.byte	0xd
	.byte	0x83
	.long	0x10e4
	.uleb128 0x1d
	.byte	0xd
	.byte	0x84
	.long	0x110a
	.uleb128 0x1d
	.byte	0xd
	.byte	0x86
	.long	0x1125
	.uleb128 0x1d
	.byte	0xd
	.byte	0x87
	.long	0x114c
	.uleb128 0x1d
	.byte	0xd
	.byte	0xce
	.long	0x25c
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd1
	.long	0x11ae
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd4
	.long	0x11d9
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd5
	.long	0x1235
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd7
	.long	0x1254
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd8
	.long	0x12bb
	.uleb128 0x1d
	.byte	0xd
	.byte	0xd9
	.long	0x126e
	.uleb128 0x1d
	.byte	0xd
	.byte	0xda
	.long	0x1294
	.uleb128 0x1d
	.byte	0xd
	.byte	0xdb
	.long	0x12db
	.uleb128 0x1e
	.ascii "__debug\0"
	.byte	0x15
	.byte	0x31
	.uleb128 0x1f
	.ascii "nothrow_t\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "nothrow\0"
	.byte	0x17
	.byte	0x47
	.ascii "_ZSt7nothrow\0"
	.long	0x26e4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii "clearerr\0"
	.byte	0xa
	.byte	0x93
	.byte	0x1
	.long	0xaac
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x880
	.uleb128 0x22
	.byte	0x1
	.ascii "fclose\0"
	.byte	0xa
	.byte	0x94
	.long	0xb9
	.byte	0x1
	.long	0xacc
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "feof\0"
	.byte	0xa
	.byte	0x9b
	.long	0xb9
	.byte	0x1
	.long	0xae4
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "ferror\0"
	.byte	0xa
	.byte	0x9c
	.long	0xb9
	.byte	0x1
	.long	0xafe
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fflush\0"
	.byte	0xa
	.byte	0x9d
	.long	0xb9
	.byte	0x1
	.long	0xb18
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fgetc\0"
	.byte	0xa
	.byte	0x9e
	.long	0xb9
	.byte	0x1
	.long	0xb31
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fgetpos\0"
	.byte	0xa
	.byte	0xa0
	.long	0xb9
	.byte	0x1
	.long	0xb51
	.uleb128 0x18
	.long	0xaac
	.uleb128 0x18
	.long	0xb51
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x88c
	.uleb128 0x22
	.byte	0x1
	.ascii "fgets\0"
	.byte	0xa
	.byte	0xa2
	.long	0xcc
	.byte	0x1
	.long	0xb7a
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0xb9
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fopen\0"
	.byte	0xa
	.byte	0xa9
	.long	0xaac
	.byte	0x1
	.long	0xb98
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xb9e
	.uleb128 0x5
	.long	0x61
	.uleb128 0x22
	.byte	0x1
	.ascii "fread\0"
	.byte	0xa
	.byte	0xaf
	.long	0x69
	.byte	0x1
	.long	0xbcb
	.uleb128 0x18
	.long	0x124
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "freopen\0"
	.byte	0xa
	.byte	0xb0
	.long	0xaac
	.byte	0x1
	.long	0xbf0
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fseek\0"
	.byte	0xa
	.byte	0xb5
	.long	0xb9
	.byte	0x1
	.long	0xc13
	.uleb128 0x18
	.long	0xaac
	.uleb128 0x18
	.long	0xc0
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "fsetpos\0"
	.byte	0xa
	.byte	0xb3
	.long	0xb9
	.byte	0x1
	.long	0xc33
	.uleb128 0x18
	.long	0xaac
	.uleb128 0x18
	.long	0xc33
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc39
	.uleb128 0x5
	.long	0x88c
	.uleb128 0x22
	.byte	0x1
	.ascii "ftell\0"
	.byte	0xa
	.byte	0xc7
	.long	0xc0
	.byte	0x1
	.long	0xc57
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "getc\0"
	.byte	0xa
	.byte	0xd6
	.long	0xb9
	.byte	0x1
	.long	0xc6f
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.ascii "getchar\0"
	.byte	0xa
	.byte	0xd7
	.long	0xb9
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.ascii "gets\0"
	.byte	0xa
	.byte	0xd9
	.long	0xcc
	.byte	0x1
	.long	0xc98
	.uleb128 0x18
	.long	0xcc
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.ascii "perror\0"
	.byte	0x8
	.word	0x201
	.byte	0x1
	.long	0xcaf
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "remove\0"
	.byte	0xa
	.byte	0xec
	.long	0xb9
	.byte	0x1
	.long	0xcc9
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "rename\0"
	.byte	0xa
	.byte	0xed
	.long	0xb9
	.byte	0x1
	.long	0xce8
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii "rewind\0"
	.byte	0xa
	.byte	0xf3
	.byte	0x1
	.long	0xcfe
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii "setbuf\0"
	.byte	0xa
	.byte	0xf7
	.byte	0x1
	.long	0xd19
	.uleb128 0x18
	.long	0xaac
	.uleb128 0x18
	.long	0xcc
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "setvbuf\0"
	.byte	0xa
	.word	0x101
	.long	0xb9
	.byte	0x1
	.long	0xd44
	.uleb128 0x18
	.long	0xaac
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0xb9
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.ascii "tmpfile\0"
	.byte	0xa
	.word	0x107
	.long	0xaac
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.ascii "tmpnam\0"
	.byte	0xa
	.word	0x108
	.long	0xcc
	.byte	0x1
	.long	0xd71
	.uleb128 0x18
	.long	0xcc
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "ungetc\0"
	.byte	0xa
	.word	0x109
	.long	0xb9
	.byte	0x1
	.long	0xd91
	.uleb128 0x18
	.long	0xb9
	.uleb128 0x18
	.long	0xaac
	.byte	0
	.uleb128 0x27
	.ascii "FileOut\0"
	.byte	0x8
	.byte	0xe
	.byte	0x7
	.long	0xe5e
	.uleb128 0x13
	.ascii "fptr\0"
	.byte	0xe
	.byte	0xb
	.long	0xaac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x19
	.byte	0x1
	.ascii "FileOut\0"
	.byte	0xe
	.byte	0xe
	.byte	0x1
	.long	0xdc6
	.long	0xdd2
	.uleb128 0x17
	.long	0xe5e
	.byte	0x1
	.uleb128 0x18
	.long	0xcc
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "write\0"
	.byte	0xe
	.byte	0x13
	.ascii "_ZN7FileOut5writeEPvy\0"
	.long	0xb9
	.byte	0x1
	.long	0xdff
	.long	0xe10
	.uleb128 0x17
	.long	0xe5e
	.byte	0x1
	.uleb128 0x18
	.long	0x124
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.ascii "flush\0"
	.byte	0xe
	.byte	0x19
	.ascii "_ZN7FileOut5flushEv\0"
	.byte	0x1
	.long	0xe37
	.long	0xe3e
	.uleb128 0x17
	.long	0xe5e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.ascii "~FileOut\0"
	.byte	0xe
	.byte	0x1e
	.byte	0x1
	.long	0xe50
	.uleb128 0x17
	.long	0xe5e
	.byte	0x1
	.uleb128 0x17
	.long	0xb9
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xd91
	.uleb128 0x22
	.byte	0x1
	.ascii "strcoll\0"
	.byte	0xf
	.byte	0x3e
	.long	0xb9
	.byte	0x1
	.long	0xe84
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "strerror\0"
	.byte	0xf
	.byte	0x48
	.long	0xcc
	.byte	0x1
	.long	0xea0
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "strtok\0"
	.byte	0xf
	.byte	0x57
	.long	0xcc
	.byte	0x1
	.long	0xebf
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii "strxfrm\0"
	.byte	0xf
	.byte	0x5a
	.long	0x69
	.byte	0x1
	.long	0xee4
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "atexit\0"
	.byte	0x8
	.word	0x14a
	.long	0xb9
	.byte	0x1
	.long	0xeff
	.uleb128 0x18
	.long	0x218
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "atof\0"
	.byte	0x8
	.word	0x14d
	.long	0x1ff
	.byte	0x1
	.long	0xf18
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "atoi\0"
	.byte	0x8
	.word	0x150
	.long	0xb9
	.byte	0x1
	.long	0xf31
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "atol\0"
	.byte	0x8
	.word	0x152
	.long	0xc0
	.byte	0x1
	.long	0xf4a
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "bsearch\0"
	.byte	0x8
	.word	0x156
	.long	0x124
	.byte	0x1
	.long	0xf7a
	.uleb128 0x18
	.long	0x154
	.uleb128 0x18
	.long	0x154
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0xf7a
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xf80
	.uleb128 0x2a
	.long	0xb9
	.long	0xf94
	.uleb128 0x18
	.long	0x154
	.uleb128 0x18
	.long	0x154
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "div\0"
	.byte	0x8
	.word	0x15c
	.long	0x1b6
	.byte	0x1
	.long	0xfb1
	.uleb128 0x18
	.long	0xb9
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "getenv\0"
	.byte	0x8
	.word	0x15d
	.long	0xcc
	.byte	0x1
	.long	0xfcc
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "ldiv\0"
	.byte	0x8
	.word	0x167
	.long	0x1f1
	.byte	0x1
	.long	0xfea
	.uleb128 0x18
	.long	0xc0
	.uleb128 0x18
	.long	0xc0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "mblen\0"
	.byte	0x8
	.word	0x169
	.long	0xb9
	.byte	0x1
	.long	0x1009
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "mbstowcs\0"
	.byte	0x8
	.word	0x171
	.long	0x69
	.byte	0x1
	.long	0x1030
	.uleb128 0x18
	.long	0xd2
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "mbtowc\0"
	.byte	0x8
	.word	0x16f
	.long	0xb9
	.byte	0x1
	.long	0x1055
	.uleb128 0x18
	.long	0xd2
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.ascii "qsort\0"
	.byte	0x8
	.word	0x157
	.byte	0x1
	.long	0x107a
	.uleb128 0x18
	.long	0x124
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0x69
	.uleb128 0x18
	.long	0xf7a
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.ascii "rand\0"
	.byte	0x8
	.word	0x173
	.long	0xb9
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.ascii "srand\0"
	.byte	0x8
	.word	0x175
	.byte	0x1
	.long	0x109f
	.uleb128 0x18
	.long	0xe3
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtod\0"
	.byte	0x8
	.word	0x182
	.long	0x1ff
	.byte	0x1
	.long	0x10bf
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtol\0"
	.byte	0x8
	.word	0x18f
	.long	0xc0
	.byte	0x1
	.long	0x10e4
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtoul\0"
	.byte	0x8
	.word	0x191
	.long	0xf3
	.byte	0x1
	.long	0x110a
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "system\0"
	.byte	0x8
	.word	0x195
	.long	0xb9
	.byte	0x1
	.long	0x1125
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "wcstombs\0"
	.byte	0x8
	.word	0x19a
	.long	0x69
	.byte	0x1
	.long	0x114c
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0x21f
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "wctomb\0"
	.byte	0x8
	.word	0x198
	.long	0xb9
	.byte	0x1
	.long	0x116c
	.uleb128 0x18
	.long	0xcc
	.uleb128 0x18
	.long	0xd8
	.byte	0
	.uleb128 0x1c
	.ascii "__gnu_cxx\0"
	.byte	0xb
	.byte	0x95
	.long	0x1235
	.uleb128 0x1d
	.byte	0xd
	.byte	0xa3
	.long	0x25c
	.uleb128 0x1d
	.byte	0xd
	.byte	0xb6
	.long	0x1235
	.uleb128 0x1d
	.byte	0xd
	.byte	0xc1
	.long	0x1254
	.uleb128 0x1d
	.byte	0xd
	.byte	0xc2
	.long	0x126e
	.uleb128 0x1d
	.byte	0xd
	.byte	0xc3
	.long	0x1294
	.uleb128 0x1d
	.byte	0xd
	.byte	0xc5
	.long	0x12bb
	.uleb128 0x1d
	.byte	0xd
	.byte	0xc6
	.long	0x12db
	.uleb128 0x2b
	.byte	0x1
	.ascii "abs\0"
	.byte	0xd
	.byte	0xad
	.ascii "_ZN9__gnu_cxx3absEx\0"
	.long	0x92
	.byte	0x1
	.long	0x11d9
	.uleb128 0x18
	.long	0x92
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.ascii "div\0"
	.byte	0xd
	.byte	0xb3
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x25c
	.byte	0x1
	.long	0x120a
	.uleb128 0x18
	.long	0x92
	.uleb128 0x18
	.long	0x92
	.byte	0
	.uleb128 0x1f
	.ascii "__numeric_traits_integer<long long int>\0"
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "lldiv\0"
	.byte	0x8
	.word	0x253
	.long	0x25c
	.byte	0x1
	.long	0x1254
	.uleb128 0x18
	.long	0x92
	.uleb128 0x18
	.long	0x92
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "atoll\0"
	.byte	0x8
	.word	0x25e
	.long	0x92
	.byte	0x1
	.long	0x126e
	.uleb128 0x18
	.long	0xb98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtoll\0"
	.byte	0x8
	.word	0x25a
	.long	0x92
	.byte	0x1
	.long	0x1294
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtoull\0"
	.byte	0x8
	.word	0x25b
	.long	0x78
	.byte	0x1
	.long	0x12bb
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.uleb128 0x18
	.long	0xb9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtof\0"
	.byte	0x8
	.word	0x17a
	.long	0x14b
	.byte	0x1
	.long	0x12db
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii "strtold\0"
	.byte	0x8
	.word	0x17b
	.long	0x209
	.byte	0x1
	.long	0x12fc
	.uleb128 0x18
	.long	0xb98
	.uleb128 0x18
	.long	0x573
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0x18
	.byte	0x11
	.byte	0x9
	.long	0x143c
	.uleb128 0x13
	.ascii "sink\0"
	.byte	0x11
	.byte	0xd
	.long	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x13
	.ascii "ptr_begin\0"
	.byte	0x11
	.byte	0xe
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x13
	.ascii "ptr_current\0"
	.byte	0x11
	.byte	0xf
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x16
	.byte	0x1
	.secrel32	.LASF3
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.long	0x1355
	.long	0x1361
	.uleb128 0x17
	.long	0x143c
	.byte	0x1
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "write\0"
	.byte	0x11
	.byte	0x1e
	.ascii "_ZN9TmpBuffer5writeEPKvy\0"
	.long	0x69
	.byte	0x1
	.long	0x1391
	.long	0x13a2
	.uleb128 0x17
	.long	0x143c
	.byte	0x1
	.uleb128 0x18
	.long	0x154
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.ascii "flush\0"
	.byte	0x11
	.byte	0x26
	.ascii "_ZN9TmpBuffer5flushEv\0"
	.byte	0x1
	.long	0x13cb
	.long	0x13d2
	.uleb128 0x17
	.long	0x143c
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii "~TmpBuffer\0"
	.byte	0x11
	.byte	0x2c
	.byte	0x1
	.long	0x13ea
	.long	0x13f7
	.uleb128 0x17
	.long	0x143c
	.byte	0x1
	.uleb128 0x17
	.long	0xb9
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.ascii "fileOutSet\0"
	.byte	0x11
	.byte	0x31
	.ascii "_ZN9TmpBuffer10fileOutSetER7FileOut\0"
	.byte	0x1
	.long	0x142f
	.uleb128 0x17
	.long	0x143c
	.byte	0x1
	.uleb128 0x18
	.long	0x1442
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x12fc
	.uleb128 0x2d
	.byte	0x8
	.long	0xd91
	.uleb128 0x3
	.ascii "Byte\0"
	.byte	0x12
	.word	0x16d
	.long	0x113
	.uleb128 0x3
	.ascii "uInt\0"
	.byte	0x12
	.word	0x16f
	.long	0xe3
	.uleb128 0x3
	.ascii "uLong\0"
	.byte	0x12
	.word	0x170
	.long	0xf3
	.uleb128 0x3
	.ascii "Bytef\0"
	.byte	0x12
	.word	0x176
	.long	0x1448
	.uleb128 0x3
	.ascii "voidpf\0"
	.byte	0x12
	.word	0x17f
	.long	0x124
	.uleb128 0x7
	.ascii "alloc_func\0"
	.byte	0x13
	.byte	0x50
	.long	0x149f
	.uleb128 0x4
	.byte	0x8
	.long	0x14a5
	.uleb128 0x2a
	.long	0x147e
	.long	0x14be
	.uleb128 0x18
	.long	0x147e
	.uleb128 0x18
	.long	0x1455
	.uleb128 0x18
	.long	0x1455
	.byte	0
	.uleb128 0x7
	.ascii "free_func\0"
	.byte	0x13
	.byte	0x51
	.long	0x14cf
	.uleb128 0x4
	.byte	0x8
	.long	0x14d5
	.uleb128 0x2e
	.long	0x14e5
	.uleb128 0x18
	.long	0x147e
	.uleb128 0x18
	.long	0x147e
	.byte	0
	.uleb128 0x9
	.ascii "z_stream_s\0"
	.byte	0x58
	.byte	0x13
	.byte	0x55
	.long	0x15f3
	.uleb128 0xa
	.ascii "next_in\0"
	.byte	0x13
	.byte	0x56
	.long	0x15f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii "avail_in\0"
	.byte	0x13
	.byte	0x57
	.long	0x1455
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.ascii "total_in\0"
	.byte	0x13
	.byte	0x58
	.long	0x1462
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.ascii "next_out\0"
	.byte	0x13
	.byte	0x5a
	.long	0x15f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii "avail_out\0"
	.byte	0x13
	.byte	0x5b
	.long	0x1455
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.ascii "total_out\0"
	.byte	0x13
	.byte	0x5c
	.long	0x1462
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.ascii "msg\0"
	.byte	0x13
	.byte	0x5e
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.ascii "state\0"
	.byte	0x13
	.byte	0x5f
	.long	0x1623
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.ascii "zalloc\0"
	.byte	0x13
	.byte	0x61
	.long	0x148d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.ascii "zfree\0"
	.byte	0x13
	.byte	0x62
	.long	0x14be
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.ascii "opaque\0"
	.byte	0x13
	.byte	0x63
	.long	0x147e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.ascii "data_type\0"
	.byte	0x13
	.byte	0x65
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.ascii "adler\0"
	.byte	0x13
	.byte	0x66
	.long	0x1462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.ascii "reserved\0"
	.byte	0x13
	.byte	0x67
	.long	0x1462
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x1470
	.uleb128 0x11
	.ascii "internal_state\0"
	.byte	0x4
	.byte	0x13
	.word	0x6bd
	.long	0x1623
	.uleb128 0xd
	.ascii "dummy\0"
	.byte	0x13
	.word	0x6bd
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x15f9
	.uleb128 0x7
	.ascii "z_stream\0"
	.byte	0x13
	.byte	0x68
	.long	0x14e5
	.uleb128 0x4
	.byte	0x8
	.long	0x177
	.uleb128 0x2d
	.byte	0x8
	.long	0x12fc
	.uleb128 0x4
	.byte	0x8
	.long	0x164b
	.uleb128 0x5
	.long	0x108
	.uleb128 0x27
	.ascii "Image\0"
	.byte	0x10
	.byte	0x2
	.byte	0xd
	.long	0x176a
	.uleb128 0x13
	.ascii "img_source\0"
	.byte	0x2
	.byte	0x10
	.long	0x176a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x13
	.ascii "p_rows\0"
	.byte	0x2
	.byte	0x11
	.long	0x1639
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2f
	.byte	0x1
	.ascii "initPRows\0"
	.byte	0x2
	.byte	0x14
	.ascii "_ZN5Image9initPRowsEv\0"
	.long	0x1775
	.byte	0x3
	.byte	0x1
	.long	0x16b8
	.long	0x16bf
	.uleb128 0x17
	.long	0x177d
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii "Image\0"
	.byte	0x2
	.byte	0x22
	.byte	0x1
	.long	0x16d2
	.long	0x16de
	.uleb128 0x17
	.long	0x177d
	.byte	0x1
	.uleb128 0x18
	.long	0x176f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "rowsGet\0"
	.byte	0x2
	.byte	0x2a
	.ascii "_ZN5Image7rowsGetEv\0"
	.long	0x1639
	.byte	0x1
	.long	0x170b
	.long	0x1712
	.uleb128 0x17
	.long	0x177d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.ascii "save\0"
	.byte	0x2
	.byte	0x2f
	.ascii "_ZNK5Image4saveER9TmpBuffer\0"
	.byte	0x1
	.long	0x1740
	.long	0x174c
	.uleb128 0x17
	.long	0x1783
	.byte	0x1
	.uleb128 0x18
	.long	0x163f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.ascii "~Image\0"
	.byte	0x2
	.byte	0x37
	.byte	0x1
	.long	0x175c
	.uleb128 0x17
	.long	0x177d
	.byte	0x1
	.uleb128 0x17
	.long	0xb9
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x176f
	.uleb128 0x2d
	.byte	0x8
	.long	0x579
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x1650
	.uleb128 0x4
	.byte	0x8
	.long	0x1789
	.uleb128 0x5
	.long	0x1650
	.uleb128 0x7
	.ascii "int32_t\0"
	.byte	0x14
	.byte	0x27
	.long	0xb9
	.uleb128 0x7
	.ascii "uint32_t\0"
	.byte	0x14
	.byte	0x28
	.long	0xe3
	.uleb128 0x30
	.ascii "PngCRC\0"
	.word	0x400
	.byte	0x3
	.byte	0x6
	.long	0x18be
	.uleb128 0x13
	.ascii "crc_table\0"
	.byte	0x3
	.byte	0x21
	.long	0x18be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x19
	.byte	0x1
	.ascii "PngCRC\0"
	.byte	0x3
	.byte	0x9
	.byte	0x1
	.long	0x17e6
	.long	0x17ed
	.uleb128 0x17
	.long	0x18ce
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii "operator()\0"
	.byte	0x3
	.byte	0x1b
	.ascii "_ZNK6PngCRCclEPKvy\0"
	.long	0x179d
	.byte	0x1
	.long	0x181c
	.long	0x182d
	.uleb128 0x17
	.long	0x18d4
	.byte	0x1
	.uleb128 0x18
	.long	0x154
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.ascii "crcUpdate\0"
	.byte	0x3
	.byte	0x23
	.ascii "_ZNK6PngCRC9crcUpdateEjPKhy\0"
	.long	0x179d
	.byte	0x3
	.byte	0x1
	.long	0x1865
	.long	0x187b
	.uleb128 0x17
	.long	0x18d4
	.byte	0x1
	.uleb128 0x18
	.long	0x179d
	.uleb128 0x18
	.long	0x108
	.uleb128 0x18
	.long	0x69
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.ascii "crc_char\0"
	.byte	0x3
	.byte	0x2b
	.ascii "_ZNK6PngCRC8crc_charEPKhy\0"
	.long	0x179d
	.byte	0x3
	.byte	0x1
	.long	0x18ac
	.uleb128 0x17
	.long	0x18d4
	.byte	0x1
	.uleb128 0x18
	.long	0x108
	.uleb128 0x18
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xe3
	.long	0x18ce
	.uleb128 0xf
	.long	0x78
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x17ad
	.uleb128 0x4
	.byte	0x8
	.long	0x18da
	.uleb128 0x5
	.long	0x17ad
	.uleb128 0x1c
	.ascii "__gnu_debug\0"
	.byte	0x15
	.byte	0x38
	.long	0x18fa
	.uleb128 0x32
	.byte	0x15
	.byte	0x39
	.long	0xa5e
	.byte	0
	.uleb128 0x33
	.long	0xa69
	.byte	0x1
	.byte	0x17
	.byte	0x45
	.uleb128 0x34
	.long	0x120a
	.byte	0x1
	.byte	0x16
	.byte	0x37
	.long	0x196c
	.uleb128 0x35
	.ascii "__min\0"
	.byte	0x16
	.byte	0x3a
	.long	0x196c
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.ascii "__max\0"
	.byte	0x16
	.byte	0x3b
	.long	0x196c
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.ascii "__is_signed\0"
	.byte	0x16
	.byte	0x3f
	.long	0x1971
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.ascii "__digits\0"
	.byte	0x16
	.byte	0x40
	.long	0x7d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.ascii "_Value\0"
	.long	0x92
	.uleb128 0x36
	.ascii "_Value\0"
	.long	0x92
	.byte	0
	.uleb128 0x5
	.long	0x92
	.uleb128 0x5
	.long	0x1775
	.uleb128 0x37
	.long	0x651
	.byte	0x2
	.long	0x1984
	.long	0x19df
	.uleb128 0x38
	.secrel32	.LASF4
	.long	0x19df
	.byte	0x1
	.uleb128 0x39
	.ascii "window_source\0"
	.byte	0x1
	.byte	0x16
	.long	0x29a
	.uleb128 0x3a
	.ascii "err_4\0"
	.byte	0x1
	.byte	0x37
	.uleb128 0x3a
	.ascii "err_3\0"
	.byte	0x1
	.byte	0x39
	.uleb128 0x3a
	.ascii "err_2\0"
	.byte	0x1
	.byte	0x3b
	.uleb128 0x3a
	.ascii "err_1\0"
	.byte	0x1
	.byte	0x3d
	.uleb128 0x3b
	.uleb128 0x3c
	.ascii "rc\0"
	.byte	0x1
	.byte	0x20
	.long	0x36e
	.uleb128 0x3c
	.ascii "bmi\0"
	.byte	0x1
	.byte	0x24
	.long	0x560
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x7d8
	.uleb128 0x3d
	.long	0x1976
	.quad	.LFB549
	.quad	.LFE549
	.secrel32	.LLST0
	.long	0x1a05
	.long	0x1a39
	.uleb128 0x3e
	.long	0x1984
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	0x198e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3f
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x40
	.long	0x19c8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	0x19d2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0x66e
	.byte	0x2
	.long	0x1a47
	.long	0x1a5c
	.uleb128 0x38
	.secrel32	.LASF4
	.long	0x19df
	.byte	0x1
	.uleb128 0x38
	.secrel32	.LASF5
	.long	0x7d3
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.long	0x1a39
	.quad	.LFB552
	.quad	.LFE552
	.secrel32	.LLST1
	.long	0x1a7d
	.long	0x1a86
	.uleb128 0x3e
	.long	0x1a47
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x696
	.quad	.LFB553
	.quad	.LFE553
	.secrel32	.LLST2
	.long	0x1aa7
	.long	0x1ab5
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1ab5
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.long	0x7de
	.uleb128 0x41
	.long	0x6e4
	.quad	.LFB554
	.quad	.LFE554
	.secrel32	.LLST3
	.long	0x1adb
	.long	0x1ae9
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1ab5
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x723
	.quad	.LFB555
	.quad	.LFE555
	.secrel32	.LLST4
	.long	0x1b0a
	.long	0x1b18
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1ab5
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x764
	.quad	.LFB556
	.quad	.LFE556
	.secrel32	.LLST5
	.long	0x1b39
	.long	0x1b47
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x19df
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x79a
	.quad	.LFB557
	.quad	.LFE557
	.secrel32	.LLST6
	.long	0x1b68
	.long	0x1b76
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x19df
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x1686
	.quad	.LFB595
	.quad	.LFE595
	.secrel32	.LLST7
	.long	0x1b97
	.long	0x1bc3
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1bc3
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x43
	.ascii "k\0"
	.byte	0x2
	.byte	0x1a
	.long	0xe3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x177d
	.uleb128 0x37
	.long	0x16bf
	.byte	0x2
	.long	0x1bd6
	.long	0x1bf0
	.uleb128 0x38
	.secrel32	.LASF4
	.long	0x1bc3
	.byte	0x1
	.uleb128 0x39
	.ascii "grabber\0"
	.byte	0x2
	.byte	0x22
	.long	0x1bf0
	.byte	0
	.uleb128 0x5
	.long	0x176f
	.uleb128 0x3d
	.long	0x1bc8
	.quad	.LFB598
	.quad	.LFE598
	.secrel32	.LLST8
	.long	0x1c16
	.long	0x1c27
	.uleb128 0x3e
	.long	0x1bd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	0x1be0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x41
	.long	0x16de
	.quad	.LFB599
	.quad	.LFE599
	.secrel32	.LLST9
	.long	0x1c48
	.long	0x1c56
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1bc3
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.long	0x174c
	.byte	0x2
	.long	0x1c64
	.long	0x1c79
	.uleb128 0x38
	.secrel32	.LASF4
	.long	0x1bc3
	.byte	0x1
	.uleb128 0x38
	.secrel32	.LASF5
	.long	0x7d3
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.long	0x1c56
	.quad	.LFB603
	.quad	.LFE603
	.secrel32	.LLST10
	.long	0x1c9a
	.long	0x1ca3
	.uleb128 0x3e
	.long	0x1c64
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.long	0x17d2
	.byte	0x2
	.long	0x1cb1
	.long	0x1cd9
	.uleb128 0x38
	.secrel32	.LASF4
	.long	0x1cd9
	.byte	0x1
	.uleb128 0x3b
	.uleb128 0x3c
	.ascii "c\0"
	.byte	0x3
	.byte	0xb
	.long	0x179d
	.uleb128 0x3c
	.ascii "n\0"
	.byte	0x3
	.byte	0xc
	.long	0xb9
	.uleb128 0x3c
	.ascii "k\0"
	.byte	0x3
	.byte	0xc
	.long	0xb9
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x18ce
	.uleb128 0x3d
	.long	0x1ca3
	.quad	.LFB606
	.quad	.LFE606
	.secrel32	.LLST11
	.long	0x1cff
	.long	0x1d32
	.uleb128 0x3e
	.long	0x1cb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x40
	.long	0x1cbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	0x1cc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x40
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x17ed
	.quad	.LFB607
	.quad	.LFE607
	.secrel32	.LLST12
	.long	0x1d53
	.long	0x1d81
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1d81
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "buffer\0"
	.byte	0x3
	.byte	0x1b
	.long	0x154
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "size\0"
	.byte	0x3
	.byte	0x1b
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.long	0x18d4
	.uleb128 0x41
	.long	0x182d
	.quad	.LFB608
	.quad	.LFE608
	.secrel32	.LLST13
	.long	0x1da7
	.long	0x1dfd
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1d81
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "crc\0"
	.byte	0x3
	.byte	0x23
	.long	0x179d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "buf\0"
	.byte	0x3
	.byte	0x23
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x44
	.ascii "len\0"
	.byte	0x3
	.byte	0x23
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3f
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x43
	.ascii "n\0"
	.byte	0x3
	.byte	0x25
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x187b
	.quad	.LFB609
	.quad	.LFE609
	.secrel32	.LLST14
	.long	0x1e1e
	.long	0x1e48
	.uleb128 0x42
	.secrel32	.LASF4
	.long	0x1d81
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "buf\0"
	.byte	0x3
	.byte	0x2b
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "len\0"
	.byte	0x3
	.byte	0x2b
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "assign\0"
	.byte	0x4
	.byte	0xf
	.ascii "_Z6assignPvi\0"
	.quad	.LFB965
	.quad	.LFE965
	.secrel32	.LLST15
	.long	0x1ec5
	.uleb128 0x44
	.ascii "addr\0"
	.byte	0x4
	.byte	0xf
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "x\0"
	.byte	0x4
	.byte	0xf
	.long	0x178e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3f
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x43
	.ascii "p_in\0"
	.byte	0x4
	.byte	0x11
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x43
	.ascii "p_out\0"
	.byte	0x4
	.byte	0x12
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.ascii "swap_bytes\0"
	.byte	0x4
	.byte	0x19
	.ascii "_Z10swap_bytesj\0"
	.long	0x179d
	.quad	.LFB966
	.quad	.LFE966
	.secrel32	.LLST16
	.long	0x1f0d
	.uleb128 0x44
	.ascii "x\0"
	.byte	0x4
	.byte	0x19
	.long	0x179d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "filterApply\0"
	.byte	0x4
	.byte	0x21
	.ascii "_Z11filterApplyPKPKhPcii\0"
	.quad	.LFB967
	.quad	.LFE967
	.secrel32	.LLST17
	.long	0x2021
	.uleb128 0x44
	.ascii "scanlines\0"
	.byte	0x4
	.byte	0x21
	.long	0x1645
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "buffer_png\0"
	.byte	0x4
	.byte	0x21
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "width\0"
	.byte	0x4
	.byte	0x21
	.long	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x47
	.secrel32	.LASF1
	.byte	0x4
	.byte	0x21
	.long	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3f
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x43
	.ascii "p_scanlines\0"
	.byte	0x4
	.byte	0x24
	.long	0x2021
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x43
	.ascii "k\0"
	.byte	0x4
	.byte	0x25
	.long	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3f
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x43
	.ascii "p_scanline\0"
	.byte	0x4
	.byte	0x2a
	.long	0x2027
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3f
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x43
	.ascii "l\0"
	.byte	0x4
	.byte	0x2b
	.long	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x2027
	.uleb128 0x4
	.byte	0x8
	.long	0x179d
	.uleb128 0x46
	.byte	0x1
	.ascii "compress\0"
	.byte	0x4
	.byte	0x36
	.ascii "_Z8compressPKcPcy\0"
	.long	0x69
	.quad	.LFB968
	.quad	.LFE968
	.secrel32	.LLST18
	.long	0x20db
	.uleb128 0x44
	.ascii "buffer_uncompressed\0"
	.byte	0x4
	.byte	0x36
	.long	0xb98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "buffer_compressed\0"
	.byte	0x4
	.byte	0x36
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "length_in\0"
	.byte	0x4
	.byte	0x36
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3f
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x43
	.ascii "stream\0"
	.byte	0x4
	.byte	0x38
	.long	0x1629
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "Chunk_sizeSet\0"
	.byte	0x4
	.byte	0x4f
	.ascii "_Z13Chunk_sizeSetPcj\0"
	.quad	.LFB969
	.quad	.LFE969
	.secrel32	.LLST19
	.long	0x2138
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x4f
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "size\0"
	.byte	0x4
	.byte	0x4f
	.long	0x179d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "Chunk_IDSet\0"
	.byte	0x4
	.byte	0x52
	.ascii "_Z11Chunk_IDSetPcj\0"
	.quad	.LFB970
	.quad	.LFE970
	.secrel32	.LLST20
	.long	0x218f
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x52
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "id\0"
	.byte	0x4
	.byte	0x52
	.long	0x179d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "Chunk_CRCSet\0"
	.byte	0x4
	.byte	0x55
	.ascii "_Z12Chunk_CRCSetPcRK6PngCRCj\0"
	.quad	.LFB971
	.quad	.LFE971
	.secrel32	.LLST21
	.long	0x220c
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x55
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "crc\0"
	.byte	0x4
	.byte	0x55
	.long	0x220c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.ascii "size_chunk_data\0"
	.byte	0x4
	.byte	0x55
	.long	0x179d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.long	0x2211
	.uleb128 0x2d
	.byte	0x8
	.long	0x18da
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_widthSet\0"
	.byte	0x4
	.byte	0x5f
	.ascii "_Z13IHDR_widthSetPci\0"
	.quad	.LFB972
	.quad	.LFE972
	.secrel32	.LLST22
	.long	0x2275
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x5f
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "width\0"
	.byte	0x4
	.byte	0x5f
	.long	0x178e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_heightSet\0"
	.byte	0x4
	.byte	0x62
	.ascii "_Z14IHDR_heightSetPci\0"
	.quad	.LFB973
	.quad	.LFE973
	.secrel32	.LLST23
	.long	0x22d3
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x62
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x47
	.secrel32	.LASF1
	.byte	0x4
	.byte	0x62
	.long	0x178e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_bitDepthSet\0"
	.byte	0x4
	.byte	0x65
	.ascii "_Z16IHDR_bitDepthSetPcc\0"
	.quad	.LFB974
	.quad	.LFE974
	.secrel32	.LLST24
	.long	0x2334
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x65
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "bd\0"
	.byte	0x4
	.byte	0x65
	.long	0x61
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_colorTypeSet\0"
	.byte	0x4
	.byte	0x68
	.ascii "_Z17IHDR_colorTypeSetPcc\0"
	.quad	.LFB975
	.quad	.LFE975
	.secrel32	.LLST25
	.long	0x2397
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "ct\0"
	.byte	0x4
	.byte	0x68
	.long	0x61
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_compressionMethodSet\0"
	.byte	0x4
	.byte	0x6b
	.ascii "_Z25IHDR_compressionMethodSetPcc\0"
	.quad	.LFB976
	.quad	.LFE976
	.secrel32	.LLST26
	.long	0x240d
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x6b
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "cmprm\0"
	.byte	0x4
	.byte	0x6b
	.long	0x61
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_filterMethodSet\0"
	.byte	0x4
	.byte	0x6e
	.ascii "_Z20IHDR_filterMethodSetPcc\0"
	.quad	.LFB977
	.quad	.LFE977
	.secrel32	.LLST27
	.long	0x247a
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x6e
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "filter\0"
	.byte	0x4
	.byte	0x6e
	.long	0x61
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.ascii "IHDR_interlaceMethodSet\0"
	.byte	0x4
	.byte	0x71
	.ascii "_Z23IHDR_interlaceMethodSetPcc\0"
	.quad	.LFB978
	.quad	.LFE978
	.secrel32	.LLST28
	.long	0x24f0
	.uleb128 0x47
	.secrel32	.LASF6
	.byte	0x4
	.byte	0x71
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.ascii "interlace\0"
	.byte	0x4
	.byte	0x71
	.long	0x61
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.ascii "main\0"
	.byte	0x4
	.byte	0x76
	.long	0xb9
	.quad	.LFB979
	.quad	.LFE979
	.secrel32	.LLST29
	.long	0x25f8
	.uleb128 0x49
	.secrel32	.Ldebug_ranges0+0
	.uleb128 0x43
	.ascii "crc\0"
	.byte	0x4
	.byte	0x78
	.long	0x17ad
	.byte	0x3
	.byte	0x91
	.sleb128 -1440
	.uleb128 0x43
	.ascii "signature\0"
	.byte	0x4
	.byte	0x79
	.long	0x26c
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x43
	.ascii "IEND\0"
	.byte	0x4
	.byte	0x7b
	.long	0x25f8
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x43
	.ascii "grabber\0"
	.byte	0x4
	.byte	0x80
	.long	0x579
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x43
	.ascii "img\0"
	.byte	0x4
	.byte	0x81
	.long	0x1650
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x43
	.ascii "IHDR\0"
	.byte	0x4
	.byte	0x84
	.long	0x2608
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x43
	.ascii "size_uncompressed\0"
	.byte	0x4
	.byte	0x91
	.long	0x69
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x43
	.ascii "img_png_uncompressed\0"
	.byte	0x4
	.byte	0x92
	.long	0xcc
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x43
	.ascii "IDAT\0"
	.byte	0x4
	.byte	0x94
	.long	0xcc
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x43
	.ascii "size_idat\0"
	.byte	0x4
	.byte	0x96
	.long	0x178e
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x43
	.ascii "file_out\0"
	.byte	0x4
	.byte	0x9c
	.long	0xaac
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x61
	.long	0x2608
	.uleb128 0xf
	.long	0x78
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.long	0x61
	.long	0x2618
	.uleb128 0xf
	.long	0x78
	.byte	0x18
	.byte	0
	.uleb128 0x43
	.ascii "CHUNK_OFFSET_SIZE\0"
	.byte	0x4
	.byte	0x49
	.long	0x263b
	.byte	0x9
	.byte	0x3
	.quad	_ZL17CHUNK_OFFSET_SIZE
	.uleb128 0x5
	.long	0x69
	.uleb128 0x43
	.ascii "CHUNK_OFFSET_ID\0"
	.byte	0x4
	.byte	0x4a
	.long	0x263b
	.byte	0x9
	.byte	0x3
	.quad	_ZL15CHUNK_OFFSET_ID
	.uleb128 0x43
	.ascii "CHUNK_OFFSET_DATA\0"
	.byte	0x4
	.byte	0x4b
	.long	0x263b
	.byte	0x9
	.byte	0x3
	.quad	_ZL17CHUNK_OFFSET_DATA
	.uleb128 0x43
	.ascii "CHUNK_BASE_SIZE\0"
	.byte	0x4
	.byte	0x4c
	.long	0x263b
	.byte	0x9
	.byte	0x3
	.quad	_ZL15CHUNK_BASE_SIZE
	.uleb128 0x43
	.ascii "IHDR_SIZE\0"
	.byte	0x4
	.byte	0x5c
	.long	0x263b
	.byte	0x9
	.byte	0x3
	.quad	_ZL9IHDR_SIZE
	.uleb128 0x43
	.ascii "IHDR_COLORTYPE_RGB\0"
	.byte	0x4
	.byte	0x5d
	.long	0x7d3
	.byte	0x9
	.byte	0x3
	.quad	_ZL18IHDR_COLORTYPE_RGB
	.uleb128 0x5
	.long	0x18fa
	.uleb128 0x4a
	.long	0x191d
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIxE5__maxE\0"
	.quad	0x7fffffffffffffff
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x13
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST0:
	.quad	.LFB549
	.quad	.LCFI0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0
	.quad	.LCFI1
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1
	.quad	.LCFI2
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI2
	.quad	.LFE549
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB552
	.quad	.LCFI3
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI3
	.quad	.LCFI4
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI4
	.quad	.LCFI5
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI5
	.quad	.LFE552
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LFB553
	.quad	.LCFI6
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI6
	.quad	.LCFI7
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI7
	.quad	.LCFI8
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI8
	.quad	.LFE553
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST3:
	.quad	.LFB554
	.quad	.LCFI9
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI9
	.quad	.LCFI10
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI10
	.quad	.LCFI11
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI11
	.quad	.LFE554
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST4:
	.quad	.LFB555
	.quad	.LCFI12
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12
	.quad	.LCFI13
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI13
	.quad	.LCFI14
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI14
	.quad	.LFE555
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST5:
	.quad	.LFB556
	.quad	.LCFI15
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI15
	.quad	.LCFI16
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI16
	.quad	.LCFI17
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI17
	.quad	.LFE556
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST6:
	.quad	.LFB557
	.quad	.LCFI18
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI18
	.quad	.LCFI19
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI19
	.quad	.LCFI20
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI20
	.quad	.LFE557
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST7:
	.quad	.LFB595
	.quad	.LCFI21
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI21
	.quad	.LCFI22
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI22
	.quad	.LCFI23
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI23
	.quad	.LFE595
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST8:
	.quad	.LFB598
	.quad	.LCFI24
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI24
	.quad	.LCFI25
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI25
	.quad	.LCFI26
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI26
	.quad	.LFE598
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST9:
	.quad	.LFB599
	.quad	.LCFI27
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI27
	.quad	.LCFI28
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI28
	.quad	.LCFI29
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI29
	.quad	.LFE599
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST10:
	.quad	.LFB603
	.quad	.LCFI30
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI30
	.quad	.LCFI31
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI31
	.quad	.LCFI32
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI32
	.quad	.LFE603
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST11:
	.quad	.LFB606
	.quad	.LCFI33
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI33
	.quad	.LCFI34
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI34
	.quad	.LCFI35
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI35
	.quad	.LFE606
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST12:
	.quad	.LFB607
	.quad	.LCFI36
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI36
	.quad	.LCFI37
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI37
	.quad	.LCFI38
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI38
	.quad	.LFE607
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST13:
	.quad	.LFB608
	.quad	.LCFI39
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI39
	.quad	.LCFI40
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI40
	.quad	.LCFI41
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI41
	.quad	.LFE608
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST14:
	.quad	.LFB609
	.quad	.LCFI42
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI42
	.quad	.LCFI43
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI43
	.quad	.LCFI44
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI44
	.quad	.LFE609
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST15:
	.quad	.LFB965
	.quad	.LCFI45
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI45
	.quad	.LCFI46
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI46
	.quad	.LCFI47
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI47
	.quad	.LFE965
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST16:
	.quad	.LFB966
	.quad	.LCFI48
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI48
	.quad	.LCFI49
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI49
	.quad	.LCFI50
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI50
	.quad	.LFE966
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST17:
	.quad	.LFB967
	.quad	.LCFI51
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI51
	.quad	.LCFI52
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI52
	.quad	.LCFI53
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI53
	.quad	.LFE967
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST18:
	.quad	.LFB968
	.quad	.LCFI54
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI54
	.quad	.LCFI55
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI55
	.quad	.LCFI56
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI56
	.quad	.LFE968
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST19:
	.quad	.LFB969
	.quad	.LCFI57
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI57
	.quad	.LCFI58
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI58
	.quad	.LCFI59
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI59
	.quad	.LFE969
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST20:
	.quad	.LFB970
	.quad	.LCFI60
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI60
	.quad	.LCFI61
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI61
	.quad	.LCFI62
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI62
	.quad	.LFE970
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST21:
	.quad	.LFB971
	.quad	.LCFI63
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI63
	.quad	.LCFI64
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI64
	.quad	.LCFI65
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI65
	.quad	.LFE971
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST22:
	.quad	.LFB972
	.quad	.LCFI66
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI66
	.quad	.LCFI67
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI67
	.quad	.LCFI68
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI68
	.quad	.LFE972
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST23:
	.quad	.LFB973
	.quad	.LCFI69
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI69
	.quad	.LCFI70
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI70
	.quad	.LCFI71
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI71
	.quad	.LFE973
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST24:
	.quad	.LFB974
	.quad	.LCFI72
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI72
	.quad	.LCFI73
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI73
	.quad	.LCFI74
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI74
	.quad	.LFE974
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST25:
	.quad	.LFB975
	.quad	.LCFI75
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI75
	.quad	.LCFI76
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI76
	.quad	.LCFI77
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI77
	.quad	.LFE975
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST26:
	.quad	.LFB976
	.quad	.LCFI78
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI78
	.quad	.LCFI79
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI79
	.quad	.LCFI80
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI80
	.quad	.LFE976
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST27:
	.quad	.LFB977
	.quad	.LCFI81
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI81
	.quad	.LCFI82
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI82
	.quad	.LCFI83
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI83
	.quad	.LFE977
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST28:
	.quad	.LFB978
	.quad	.LCFI84
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI84
	.quad	.LCFI85
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI85
	.quad	.LCFI86
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI86
	.quad	.LFE978
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST29:
	.quad	.LFB979
	.quad	.LCFI87
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI87
	.quad	.LCFI88
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI88
	.quad	.LCFI89
	.word	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI89
	.quad	.LCFI90
	.word	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI90
	.quad	.LCFI91
	.word	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI91
	.quad	.LCFI92
	.word	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI92
	.quad	.LCFI93
	.word	0x2
	.byte	0x77
	.sleb128 56
	.quad	.LCFI93
	.quad	.LCFI94
	.word	0x3
	.byte	0x77
	.sleb128 64
	.quad	.LCFI94
	.quad	.LCFI95
	.word	0x3
	.byte	0x77
	.sleb128 72
	.quad	.LCFI95
	.quad	.LCFI96
	.word	0x3
	.byte	0x77
	.sleb128 1616
	.quad	.LCFI96
	.quad	.LCFI97
	.word	0x3
	.byte	0x76
	.sleb128 1488
	.quad	.LCFI97
	.quad	.LCFI98
	.word	0x3
	.byte	0x77
	.sleb128 -1480
	.quad	.LCFI98
	.quad	.LFE979
	.word	0x3
	.byte	0x76
	.sleb128 1488
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x12c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB549
	.quad	.LFE549-.LFB549
	.quad	.LFB552
	.quad	.LFE552-.LFB552
	.quad	.LFB553
	.quad	.LFE553-.LFB553
	.quad	.LFB554
	.quad	.LFE554-.LFB554
	.quad	.LFB555
	.quad	.LFE555-.LFB555
	.quad	.LFB556
	.quad	.LFE556-.LFB556
	.quad	.LFB557
	.quad	.LFE557-.LFB557
	.quad	.LFB595
	.quad	.LFE595-.LFB595
	.quad	.LFB598
	.quad	.LFE598-.LFB598
	.quad	.LFB599
	.quad	.LFE599-.LFB599
	.quad	.LFB603
	.quad	.LFE603-.LFB603
	.quad	.LFB606
	.quad	.LFE606-.LFB606
	.quad	.LFB607
	.quad	.LFE607-.LFB607
	.quad	.LFB608
	.quad	.LFE608-.LFB608
	.quad	.LFB609
	.quad	.LFE609-.LFB609
	.quad	.LFB966
	.quad	.LFE966-.LFB966
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB18
	.quad	.LBE18
	.quad	.LBB19
	.quad	.LBE19
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB549
	.quad	.LFE549
	.quad	.LFB552
	.quad	.LFE552
	.quad	.LFB553
	.quad	.LFE553
	.quad	.LFB554
	.quad	.LFE554
	.quad	.LFB555
	.quad	.LFE555
	.quad	.LFB556
	.quad	.LFE556
	.quad	.LFB557
	.quad	.LFE557
	.quad	.LFB595
	.quad	.LFE595
	.quad	.LFB598
	.quad	.LFE598
	.quad	.LFB599
	.quad	.LFE599
	.quad	.LFB603
	.quad	.LFE603
	.quad	.LFB606
	.quad	.LFE606
	.quad	.LFB607
	.quad	.LFE607
	.quad	.LFB608
	.quad	.LFE608
	.quad	.LFB609
	.quad	.LFE609
	.quad	.LFB966
	.quad	.LFE966
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF5:
	.ascii "__in_chrg\0"
.LASF0:
	.ascii "unused\0"
.LASF6:
	.ascii "chunk\0"
.LASF1:
	.ascii "height\0"
.LASF2:
	.ascii "FrameGrabber\0"
.LASF3:
	.ascii "TmpBuffer\0"
.LASF4:
	.ascii "this\0"
	.data
	.align 8
.LDFCM0:
	.quad	__gxx_personality_sj0
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	deflateInit2_;	.scl	2;	.type	32;	.endef
	.def	deflate;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	deflateEnd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Resume;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
