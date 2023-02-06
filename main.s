	.file	"main.c"
	.text
	.section .rdata,"dr"
LC1:
	.ascii "data\0"
	.text
	.globl	_write_header
	.def	_write_header;	.scl	2;	.type	32;	.endef
_write_header:
LFB65:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	movl	20(%ebp), %eax
	movw	$1, -34(%ebp)
	movw	$16, -32(%ebp)
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movw	$2, -30(%ebp)
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -24(%ebp)
	addl	%eax, %eax
	movl	%edx, -20(%ebp)
	adcl	%edx, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	fildq	-64(%ebp)
	testl	%edx, %edx
	jns	L2
	fadds	LC0
L2:
	fnstcw	-50(%ebp)
	fstps	-64(%ebp)
	flds	-64(%ebp)
	fmuls	16(%ebp)
	movl	$_w, (%esp)
	movw	-50(%ebp), %ax
	movl	$0, -12(%ebp)
	orb	$12, %ah
	movw	%ax, -52(%ebp)
	fldcw	-52(%ebp)
	fistpq	-64(%ebp)
	fldcw	-50(%ebp)
	movl	-64(%ebp), %ecx
	leal	-44(%ecx), %eax
	movl	%ecx, -28(%ebp)
	movl	%eax, -16(%ebp)
	movl	_io, %eax
	movl	%eax, 4(%esp)
	call	_fputs
	movl	_io, %eax
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$_w+5, (%esp)
	movl	%eax, 4(%esp)
	call	_fputs
	movl	_io, %eax
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$_bloc_size, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$_audio_format, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-30(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	_io, %eax
	movl	$LC1, (%esp)
	movl	%eax, 4(%esp)
	call	_fputs
	movl	_io, %eax
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$84, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE65:
	.globl	_write_data
	.def	_write_data;	.scl	2;	.type	32;	.endef
_write_data:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	fildq	-64(%ebp)
	cmpl	$0, -60(%ebp)
	fld	%st(0)
	fstpt	-80(%ebp)
	jns	L6
	fadds	LC0
L6:
	fstps	-56(%ebp)
	flds	-56(%ebp)
	fmuls	16(%ebp)
	xorl	%esi, %esi
	xorl	%edi, %edi
	fstps	-68(%ebp)
L7:
	movl	%esi, -56(%ebp)
	testl	%edi, %edi
	movl	%edi, -52(%ebp)
	fildq	-56(%ebp)
	fld	%st(0)
	jns	L21
	fxch	%st(1)
	fadds	LC0
	jmp	L14
L21:
	fxch	%st(1)
L14:
	fstps	-56(%ebp)
	flds	-56(%ebp)
	flds	-68(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jbe	L19
	movw	$0, -26(%ebp)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movw	$0, -56(%ebp)
L8:
	cmpl	8(%ebp), %ebx
	jge	L20
	movl	12(%ebp), %eax
	fldl	LC3
	movl	(%eax,%ebx,4), %eax
	addl	%eax, %eax
	movl	%eax, -88(%ebp)
	fimull	-88(%ebp)
	fld	%st(1)
	testl	%edi, %edi
	jns	L9
	fadds	LC0
L9:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	cmpl	$0, -60(%ebp)
	fmulp	%st, %st(1)
	fldt	-80(%ebp)
	jns	L22
	fadds	LC0
	fxch	%st(2)
	jmp	L10
L22:
	fxch	%st(2)
L10:
	fstpt	-104(%ebp)
	fxch	%st(1)
	incl	%ebx
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_cos
	movl	$18000, %eax
	fnstcw	-42(%ebp)
	cltd
	idivl	8(%ebp)
	movl	%eax, -88(%ebp)
	movw	-42(%ebp), %ax
	fimull	-88(%ebp)
	fiadds	-56(%ebp)
	orb	$12, %ah
	movw	%ax, -44(%ebp)
	movb	$1, %al
	fldcw	-44(%ebp)
	fistps	-56(%ebp)
	fldcw	-42(%ebp)
	fldt	-104(%ebp)
	jmp	L8
L20:
	fstp	%st(0)
	testb	%al, %al
	je	L12
	movl	-56(%ebp), %eax
	movw	%ax, -26(%ebp)
L12:
	movl	_io, %eax
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$1, %esi
	adcl	$0, %edi
	jmp	L7
L19:
	fstp	%st(0)
	addl	$108, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE66:
	.section .rdata,"dr"
LC4:
	.ascii "\12Usage:\0"
LC5:
	.ascii "\12\11hrmn --help : this message\0"
LC6:
	.ascii "\12\11hrmn [-t <duration> ] -f [ freq freq2 ... ] -o <output> \0"
LC7:
	.ascii "\12\11Generates an audio file of <duration> seconds, with all frequencies as harmonics (in Hz),\0"
LC8:
	.ascii "\12\11into the specified <output> file.\0"
	.text
	.globl	_usage
	.def	_usage;	.scl	2;	.type	32;	.endef
_usage:
LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC4, (%esp)
	call	_printf
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_printf
	movl	$0, (%esp)
	call	_exit
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
LC9:
	.ascii "-t\0"
LC10:
	.ascii "-o\0"
LC11:
	.ascii "-f\0"
	.text
	.globl	_check_args
	.def	_check_args;	.scl	2;	.type	32;	.endef
_check_args:
LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	$1, %edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$33, (%esp)
	call	_putchar
	cmpl	$1, 8(%ebp)
	jg	L26
L30:
	call	_usage
L26:
	movl	$63, (%esp)
	leal	1(%edi), %esi
	call	_putchar
	movl	12(%ebp), %eax
	movl	(%eax,%edi,4), %ebx
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L27
	movl	16(%ebp), %eax
	movl	%esi, (%eax)
	jmp	L40
L27:
	movl	$LC10, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L29
	movl	16(%ebp), %eax
	movl	%esi, 4(%eax)
L40:
	addl	$2, %edi
	jmp	L28
L29:
	movl	$LC11, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L30
	movl	16(%ebp), %eax
	movl	%esi, %edi
	movl	%esi, 8(%eax)
L31:
	cmpl	%edi, 8(%ebp)
	jg	L32
L34:
	movl	16(%ebp), %eax
	movl	%edi, 12(%eax)
	jmp	L28
L32:
	movl	12(%ebp), %eax
	movl	(%eax,%edi,4), %esi
	movl	$LC9, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	movl	$LC10, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, %ebx
	call	_strcmp
	testl	%eax, %ebx
	je	L34
	incl	%edi
	jmp	L31
L28:
	cmpl	8(%ebp), %edi
	jl	L26
	addl	$28, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE68:
	.globl	_max_freq
	.def	_max_freq;	.scl	2;	.type	32;	.endef
_max_freq:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	(%eax), %eax
	cltd
L42:
	cmpl	8(%ebp), %ecx
	jge	L46
	movl	-20(%ebp), %ebx
	movl	(%ebx,%ecx,4), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	cmpl	(%ebx,%ecx,4), %eax
	movl	%edx, %ebx
	sbbl	%edi, %ebx
	jnc	L43
	movl	%esi, %eax
	movl	%edi, %edx
L43:
	incl	%ecx
	jmp	L42
L46:
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE69:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC13:
	.ascii "bf\0"
LC14:
	.ascii "duration\0"
LC15:
	.ascii "wb\0"
LC16:
	.ascii "Error opening file %s\0"
LC18:
	.ascii "%d \0"
	.section	.text.startup,"x"
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB64:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$72, %esp
	movl	(%ecx), %ebx
	movl	4(%ecx), %esi
	call	___main
	movl	$LC13, (%esp)
	call	_printf
	leal	-40(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_check_args
	movl	$LC14, (%esp)
	call	_printf
	movl	-36(%ebp), %eax
	movl	$LC15, 4(%esp)
	testl	%eax, %eax
	je	L48
	movl	(%esi,%eax,4), %eax
	movl	%eax, (%esp)
	jmp	L59
L48:
	movl	$_default_out_name, (%esp)
L59:
	call	_fopen
	movl	%eax, _io
	cmpl	$0, _io
	jne	L50
	movl	$_default_out_name, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
L50:
	movl	-28(%ebp), %ebx
	subl	-32(%ebp), %ebx
	movzwl	%bx, %ebx
	leal	15(,%ebx,4), %eax
	shrl	$4, %eax
	sall	$4, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	-40(%ebp), %eax
	leal	20(%esp), %edi
	movl	(%esi,%eax,4), %eax
	movl	%eax, (%esp)
	call	_atof
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jp	L56
	je	L57
L56:
	movl	-40(%ebp), %eax
	movl	(%esi,%eax,4), %eax
	movl	%eax, (%esp)
	call	_atof
	fstps	-44(%ebp)
	jmp	L51
L57:
	flds	LC12
	fstps	-44(%ebp)
L51:
	movl	-32(%ebp), %edx
L53:
	cmpl	-28(%ebp), %edx
	jge	L60
	movl	(%esi,%edx,4), %eax
	movl	%edx, -56(%ebp)
	movl	%eax, (%esp)
	call	_atoi
	movl	$LC18, (%esp)
	movl	%eax, 4(%esp)
	call	_printf
	movl	-56(%ebp), %edx
	movl	(%esi,%edx,4), %eax
	movl	%edx, %ecx
	subl	-32(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	movl	%eax, (%esp)
	call	_atoi
	movl	-48(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	%eax, (%edi,%ecx,4)
	incl	%edx
	jmp	L53
L60:
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_max_freq
	flds	-44(%ebp)
	movl	%edi, 4(%esp)
	imull	$10, %edx, %ecx
	movl	$10, %edx
	movl	%ebx, (%esp)
	mull	%edx
	fstps	8(%esp)
	addl	%ecx, %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	call	_write_header
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edi, 4(%esp)
	flds	-44(%ebp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	fstps	8(%esp)
	call	_write_data
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE64:
	.comm	_io, 4, 2
	.globl	_w
	.section .rdata,"dr"
	.align 4
_w:
	.ascii "RIFF\0WAVEfmt \0\0"
	.globl	_default_duration
	.align 4
_default_duration:
	.long	1077936128
	.globl	_default_out_name
	.align 4
_default_out_name:
	.ascii "out.wav\0"
	.globl	_audio_format
	.align 2
_audio_format:
	.word	1
	.globl	_bloc_size
	.align 8
_bloc_size:
	.long	16
	.long	0
	.align 4
LC0:
	.long	1602224128
	.align 8
LC3:
	.long	1413754136
	.long	1074340347
	.align 4
LC12:
	.long	1077936128
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_fputs;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_cos;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_atof;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
