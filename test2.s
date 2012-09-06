	.file	"test.cpp"
	.section	.text$_ZN12FrameGrabberD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN12FrameGrabberD1Ev
	.def	_ZN12FrameGrabberD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12FrameGrabberD1Ev
_ZN12FrameGrabberD1Ev:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	32(%rcx), %rdx
	movq	%rcx, %rbx
	movq	16(%rcx), %rcx
	call	*__imp_SelectObject(%rip)
	movq	24(%rbx), %rcx
	call	*__imp_DeleteObject(%rip)
	movq	16(%rbx), %rcx
	call	*__imp_DeleteDC(%rip)
	movq	8(%rbx), %rdx
	movq	(%rbx), %rcx
	movq	__imp_ReleaseDC(%rip), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp *%rax
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%d\12\0"
	.text
	.p2align 4,,15
	.globl	_Z11filterApplyPKPKhPcii
	.def	_Z11filterApplyPKPKhPcii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11filterApplyPKPKhPcii
_Z11filterApplyPKPKhPcii:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	.LC0(%rip), %rcx
	movl	%r9d, %ebp
	movq	%rdx, %rbx
	movl	%r9d, %edx
	movl	%r8d, %edi
	call	printf
	testl	%ebp, %ebp
	jle	.L3
	leal	-1(%rdi), %eax
	xorl	%r9d, %r9d
	leaq	3(%rax,%rax,2), %r10
	.p2align 4,,10
.L7:
	movb	$0, (%rbx)
	addq	$1, %rbx
	testl	%edi, %edi
	jle	.L5
	movq	(%rsi,%r9,8), %r8
	movq	%rbx, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L6:
	movl	(%r8,%rax,4), %edx
	addq	$1, %rax
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	sarl	$8, %edx
	movl	%edx, (%rcx)
	addq	$3, %rcx
	cmpl	%eax, %edi
	jg	.L6
	addq	%r10, %rbx
.L5:
	addq	$1, %r9
	cmpl	%r9d, %ebp
	jg	.L7
.L3:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "1.2.7\0"
	.text
	.p2align 4,,15
	.globl	_Z8compressPKcPcy
	.def	_Z8compressPKcPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8compressPKcPcy
_Z8compressPKcPcy:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$160, %rsp
	.seh_stackalloc	160
	.seh_endprologue
	xorl	%eax, %eax
	movl	$15, %r9d
	leaq	64(%rsp), %rbx
	movq	%rcx, %rbp
	movl	$11, %ecx
	movq	%r8, %rsi
	movq	%rdx, %r12
	movl	$8, %r8d
	movq	%rbx, %rdi
	movl	$6, %edx
	rep stosq
	leaq	.LC1(%rip), %rax
	movq	%rbx, %rcx
	movl	$88, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$9, 32(%rsp)
	movq	%rax, 48(%rsp)
	call	deflateInit2_
	movl	$4, %edx
	movq	%rbx, %rcx
	movl	%esi, 72(%rsp)
	movq	%rbp, 64(%rsp)
	movl	%esi, 88(%rsp)
	movq	%r12, 80(%rsp)
	call	deflate
	movq	%rbx, %rcx
	call	deflateEnd
	mov	92(%rsp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13Chunk_sizeSetPcj
	.def	_Z13Chunk_sizeSetPcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13Chunk_sizeSetPcj
_Z13Chunk_sizeSetPcj:
	.seh_endprologue
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	movl	%edx, (%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z11Chunk_IDSetPcj
	.def	_Z11Chunk_IDSetPcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11Chunk_IDSetPcj
_Z11Chunk_IDSetPcj:
	.seh_endprologue
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	movl	%edx, 4(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12Chunk_CRCSetPcRK6PngCRCj
	.def	_Z12Chunk_CRCSetPcRK6PngCRCj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12Chunk_CRCSetPcRK6PngCRCj
_Z12Chunk_CRCSetPcRK6PngCRCj:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	xorl	%eax, %eax
	leal	4(%r8), %r11d
	testq	%r11, %r11
	je	.L15
	movl	$-1, %eax
	xorl	%r9d, %r9d
	.p2align 4,,10
.L16:
	movl	%eax, %ebx
	xorb	4(%rcx,%r9), %bl
	addq	$1, %r9
	shrl	$8, %eax
	movzbl	%bl, %r10d
	xorl	(%rdx,%r10,4), %eax
	cmpq	%r9, %r11
	ja	.L16
	notl	%eax
.L15:
	mov	%r8d, %r8d
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 8(%rcx,%r8)
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13IHDR_widthSetPci
	.def	_Z13IHDR_widthSetPci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13IHDR_widthSetPci
_Z13IHDR_widthSetPci:
	.seh_endprologue
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	movl	%edx, 8(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z14IHDR_heightSetPci
	.def	_Z14IHDR_heightSetPci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14IHDR_heightSetPci
_Z14IHDR_heightSetPci:
	.seh_endprologue
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	movl	%edx, 12(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z16IHDR_bitDepthSetPcc
	.def	_Z16IHDR_bitDepthSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16IHDR_bitDepthSetPcc
_Z16IHDR_bitDepthSetPcc:
	.seh_endprologue
	movb	%dl, 16(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z17IHDR_colorTypeSetPcc
	.def	_Z17IHDR_colorTypeSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17IHDR_colorTypeSetPcc
_Z17IHDR_colorTypeSetPcc:
	.seh_endprologue
	movb	%dl, 17(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z25IHDR_compressionMethodSetPcc
	.def	_Z25IHDR_compressionMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z25IHDR_compressionMethodSetPcc
_Z25IHDR_compressionMethodSetPcc:
	.seh_endprologue
	movb	%dl, 18(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z20IHDR_filterMethodSetPcc
	.def	_Z20IHDR_filterMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z20IHDR_filterMethodSetPcc
_Z20IHDR_filterMethodSetPcc:
	.seh_endprologue
	movb	%dl, 19(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z23IHDR_interlaceMethodSetPcc
	.def	_Z23IHDR_interlaceMethodSetPcc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23IHDR_interlaceMethodSetPcc
_Z23IHDR_interlaceMethodSetPcc:
	.seh_endprologue
	movb	%dl, 20(%rcx)
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "Could not initializing FrameGrabber\0"
.LC7:
	.ascii "Could not initialize Image\0"
.LC8:
	.ascii "wb\0"
.LC9:
	.ascii "test.png\0"
	.def	__gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1544, %rsp
	.seh_stackalloc	1544
	movaps	%xmm6, 1504(%rsp)
	.seh_savexmm	%xmm6, 1504
	movaps	%xmm7, 1520(%rsp)
	.seh_savexmm	%xmm7, 1520
	.seh_endprologue
	leaq	__gxx_personality_sj0(%rip), %rax
	leaq	.LLSDA1080(%rip), %rdx
	leaq	.L49(%rip), %rbx
	leaq	1504(%rsp), %rcx
	movq	%rax, 224(%rsp)
	movq	%rdx, 232(%rsp)
	movq	%rcx, 240(%rsp)
	leaq	176(%rsp), %rcx
	movq	%rbx, 248(%rsp)
	movq	%rsp, 256(%rsp)
	call	_Unwind_SjLj_Register
	call	__main
	leaq	288(%rsp), %rax
	movdqa	.LC3(%rip), %xmm5
	pxor	%xmm1, %xmm1
	leaq	1024(%rax), %rdx
	movdqa	.LC2(%rip), %xmm3
	movdqa	.LC4(%rip), %xmm2
	movdqa	.LC5(%rip), %xmm0
	jmp	.L27
	.p2align 4,,10
.L46:
	movdqa	%xmm4, %xmm3
.L27:
	movdqa	%xmm3, %xmm6
	movdqa	%xmm3, %xmm4
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	paddd	%xmm5, %xmm4
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm3
	psrld	$1, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpeqd	%xmm1, %xmm3
	pand	%xmm3, %xmm6
	pandn	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm3, (%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.L46
	leaq	288(%rsp), %rdx
	leaq	1472(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movb	$-119, 1488(%rsp)
	movb	$80, 1489(%rsp)
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movb	$78, 1490(%rsp)
	movl	%eax, 1472(%rsp)
	movl	$1229278788, %eax
	movb	$71, 1491(%rsp)
	movb	$13, 1492(%rsp)
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movb	$10, 1493(%rsp)
	movl	%eax, 1476(%rsp)
	movb	$26, 1494(%rsp)
	movb	$10, 1495(%rsp)
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	movl	$-1, 184(%rsp)
	call	*__imp_GetDesktopWindow(%rip)
	movq	%rax, 1312(%rsp)
	movq	%rax, %rcx
	call	*__imp_GetDC(%rip)
	testq	%rax, %rax
	movq	%rax, 1320(%rsp)
	je	.L28
	movq	%rax, %rcx
	call	*__imp_CreateCompatibleDC(%rip)
	testq	%rax, %rax
	movq	%rax, 1328(%rsp)
	je	.L29
	leaq	1456(%rsp), %rdx
	movq	1312(%rsp), %rcx
	call	*__imp_GetClientRect(%rip)
	leaq	1376(%rsp), %rdx
	xorl	%eax, %eax
	movl	$5, %ecx
	movl	1468(%rsp), %r8d
	movl	1464(%rsp), %r9d
	movq	%rdx, %rdi
	rep stosq
	movl	%r8d, 1364(%rsp)
	negl	%r8d
	movl	%r9d, 1360(%rsp)
	movl	%r9d, 1380(%rsp)
	movl	%r8d, 1384(%rsp)
	leaq	1352(%rsp), %r9
	xorl	%r8d, %r8d
	movl	$40, 1376(%rsp)
	movw	$1, 1388(%rsp)
	movw	$32, 1390(%rsp)
	movq	1328(%rsp), %rcx
	movl	$0, (%rdi)
	movl	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	*__imp_CreateDIBSection(%rip)
	testq	%rax, %rax
	movq	%rax, 1336(%rsp)
	je	.L30
	movq	%rax, %rdx
	movq	1328(%rsp), %rcx
	call	*__imp_SelectObject(%rip)
	testq	%rax, %rax
	movq	%rax, 1344(%rsp)
	je	.L54
	movl	1364(%rsp), %ecx
	movl	%ecx, 132(%rsp)
	movslq	%ecx, %rcx
	salq	$3, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	je	.L33
	movl	132(%rsp), %eax
	movl	132(%rsp), %r9d
	sarl	$31, %eax
	xorl	%eax, %r9d
	subl	%eax, %r9d
	je	.L34
	movq	104(%rsp), %rdx
	movl	1360(%rsp), %r10d
	movq	1352(%rsp), %r11
	salq	$60, %rdx
	sall	$2, %r10d
	shrq	$63, %rdx
	cmpl	%edx, %r9d
	cmovbe	%r9d, %edx
	testl	%edx, %edx
	mov	%edx, %ecx
	je	.L47
	movq	104(%rsp), %rbx
	cmpl	%edx, %r9d
	movq	%r11, (%rbx)
	je	.L34
	movl	$1, %eax
.L35:
	movl	%r9d, %esi
	subl	%edx, %esi
	movl	%esi, %r8d
	shrl	$2, %r8d
	leal	0(,%r8,4), %ebx
	testl	%ebx, %ebx
	je	.L37
	leal	1(%rax), %edi
	leal	2(%rax), %edx
	movl	%eax, 100(%rsp)
	movq	%r11, 88(%rsp)
	movl	%edi, 164(%rsp)
	leal	3(%rax), %edi
	movl	%edx, 168(%rsp)
	movd	168(%rsp), %xmm1
	movl	%edi, 172(%rsp)
	movd	164(%rsp), %xmm2
	movd	172(%rsp), %xmm0
	movq	104(%rsp), %rdi
	movdqa	.LC3(%rip), %xmm7
	punpckldq	%xmm0, %xmm1
	movd	100(%rsp), %xmm0
	movl	%r10d, 100(%rsp)
	leaq	(%rdi,%rcx,8), %rdx
	xorl	%ecx, %ecx
	punpckldq	%xmm2, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movd	100(%rsp), %xmm1
	pshufd	$0, %xmm1, %xmm3
	movq	88(%rsp), %xmm1
	punpcklqdq	%xmm1, %xmm1
	movdqa	%xmm1, %xmm2
	pxor	%xmm1, %xmm1
	jmp	.L38
	.p2align 4,,10
.L48:
	movdqa	%xmm6, %xmm0
.L38:
	movdqa	%xmm0, %xmm5
	addl	$1, %ecx
	movdqa	%xmm3, %xmm4
	movdqa	%xmm0, %xmm6
	pmuludq	%xmm3, %xmm5
	psrldq	$4, %xmm0
	psrldq	$4, %xmm4
	pmuludq	%xmm0, %xmm4
	pshufd	$8, %xmm5, %xmm0
	pshufd	$8, %xmm4, %xmm4
	paddd	%xmm7, %xmm6
	punpckldq	%xmm4, %xmm0
	movdqa	%xmm0, %xmm4
	punpckhdq	%xmm1, %xmm0
	punpckldq	%xmm1, %xmm4
	paddq	%xmm2, %xmm0
	movdqa	%xmm0, 16(%rdx)
	paddq	%xmm2, %xmm4
	movdqa	%xmm4, (%rdx)
	addq	$32, %rdx
	cmpl	%r8d, %ecx
	jb	.L48
	addl	%ebx, %eax
	cmpl	%ebx, %esi
	je	.L34
.L37:
	movl	%r10d, %edx
	movq	104(%rsp), %rbx
	imull	%eax, %edx
	.p2align 4,,10
.L40:
	mov	%eax, %ecx
	mov	%edx, %r8d
	addl	$1, %eax
	addq	%r11, %r8
	addl	%r10d, %edx
	cmpl	%eax, %r9d
	movq	%r8, (%rbx,%rcx,8)
	ja	.L40
.L34:
	movq	1320(%rsp), %rax
	movl	132(%rsp), %ebx
	xorl	%r8d, %r8d
	movl	1360(%rsp), %r9d
	movq	1328(%rsp), %rcx
	xorl	%edx, %edx
	movl	$1087111200, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	$2, 184(%rsp)
	call	*__imp_BitBlt(%rip)
	leaq	288(%rsp), %rdx
	leaq	1424(%rsp), %rcx
	movl	$13, %r8d
	movl	$13, %eax
	movb	$8, 1440(%rsp)
	movb	$2, 1441(%rsp)
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movb	$0, 1442(%rsp)
	movl	%eax, 1424(%rsp)
	movl	$1229472850, %eax
	movb	$0, 1443(%rsp)
	movb	$0, 1444(%rsp)
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 1428(%rsp)
	movl	1360(%rsp), %eax
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 1432(%rsp)
	movl	1364(%rsp), %eax
/APP
 # 24 "test.cpp" 1
	bswap %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 1436(%rsp)
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	movl	1360(%rsp), %eax
	movl	1364(%rsp), %edx
	movl	%eax, 144(%rsp)
	leal	1(%rax,%rax,2), %eax
	movl	%edx, 148(%rsp)
	imull	%edx, %eax
	cltq
	movq	%rax, %rcx
	movq	%rax, 136(%rsp)
	call	malloc
	movl	148(%rsp), %r9d
	movl	144(%rsp), %r8d
	movq	%rax, %rdx
	movq	104(%rsp), %rcx
	movq	%rax, 152(%rsp)
	movl	$2, 184(%rsp)
	call	_Z11filterApplyPKPKhPcii
	movq	136(%rsp), %rcx
	addq	$12, %rcx
	call	malloc
	movq	136(%rsp), %r8
	movq	152(%rsp), %rcx
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rax, 112(%rsp)
	call	_Z8compressPKcPcy
	movq	112(%rsp), %rbx
	movl	%eax, %ecx
	movl	%eax, %r8d
/APP
 # 24 "test.cpp" 1
	bswap %ecx
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%rsp)
	movl	%edx, (%rbx)
	movl	$1229209940, %edx
	movq	%rbx, %rcx
/APP
 # 24 "test.cpp" 1
	bswap %edx
 # 0 "" 2
/NO_APP
	movl	%edx, 4(%rbx)
	leaq	288(%rsp), %rdx
	call	_Z12Chunk_CRCSetPcRK6PngCRCj
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rcx
	call	fopen
	leaq	1488(%rsp), %rcx
	movq	%rax, %r9
	movl	$8, %r8d
	movl	$1, %edx
	movq	%rax, 120(%rsp)
	call	fwrite
	movq	120(%rsp), %r9
	leaq	1424(%rsp), %rcx
	movl	$25, %r8d
	movl	$1, %edx
	call	fwrite
	movslq	160(%rsp), %r8
	movq	120(%rsp), %r9
	movl	$1, %edx
	movq	%rbx, %rcx
	call	fwrite
	movq	120(%rsp), %r9
	leaq	1472(%rsp), %rcx
	movl	$12, %r8d
	movl	$1, %edx
	call	fwrite
	movq	%rbx, %rcx
	call	free
	movq	120(%rsp), %rcx
	call	fclose
	movq	104(%rsp), %rcx
	call	free
	leaq	1312(%rsp), %rcx
	movl	$-1, 184(%rsp)
	call	_ZN12FrameGrabberD1Ev
	leaq	176(%rsp), %rcx
	call	_Unwind_SjLj_Unregister
	nop
	movaps	1504(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	1520(%rsp), %xmm7
	addq	$1544, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L33:
	movl	$8, %ecx
	leaq	.LC7(%rip), %rdi
	call	__cxa_allocate_exception
	leaq	_ZTIPKc(%rip), %rdx
	movq	%rdi, (%rax)
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	movl	$1, 184(%rsp)
	call	__cxa_throw
.L49:
	movl	184(%rsp), %eax
	movq	192(%rsp), %rcx
	testl	%eax, %eax
	movq	%rcx, 280(%rsp)
	je	.L44
	subl	$1, %eax
	je	.L51
		.word	0x0b0f
.L54:
.L32:
	movq	1336(%rsp), %rcx
	movl	$-1, 184(%rsp)
	call	*__imp_DeleteObject(%rip)
.L30:
	movq	1328(%rsp), %rcx
	movl	$-1, 184(%rsp)
	call	*__imp_DeleteDC(%rip)
.L29:
	movq	1320(%rsp), %rdx
	movq	1312(%rsp), %rcx
	movl	$-1, 184(%rsp)
	call	*__imp_ReleaseDC(%rip)
.L28:
	movl	$8, %ecx
	call	__cxa_allocate_exception
	leaq	.LC6(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	movq	%rdx, (%rax)
	leaq	_ZTIPKc(%rip), %rdx
	movl	$-1, 184(%rsp)
	call	__cxa_throw
.L47:
	xorl	%eax, %eax
	jmp	.L35
.L51:
	movq	104(%rsp), %rcx
	call	free
.L44:
	leaq	1312(%rsp), %rcx
	movl	$0, 184(%rsp)
	call	_ZN12FrameGrabberD1Ev
	movq	280(%rsp), %rcx
	movl	$-1, 184(%rsp)
	call	_Unwind_SjLj_Resume
	nop
	.section	.gcc_except_table,"w"
.LLSDA1080:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1080-.LLSDACSB1080
.LLSDACSB1080:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
.LLSDACSE1080:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC2:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC3:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC4:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC5:
	.long	-306674912
	.long	-306674912
	.long	-306674912
	.long	-306674912
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	deflateInit2_;	.scl	2;	.type	32;	.endef
	.def	deflate;	.scl	2;	.type	32;	.endef
	.def	deflateEnd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Resume;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
