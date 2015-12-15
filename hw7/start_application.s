	.file	"start-application.c"
	.section	.rodata
.LC0:
	.string	"Terminate application."
	.text
	.globl	TerminateApplication
	.type	TerminateApplication, @function
TerminateApplication:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC0, (%esp)
	call	puts
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	TerminateApplication, .-TerminateApplication
	.section	.rodata
.LC1:
	.string	"Initialize application."
	.text
	.globl	InitializeApplication
	.type	InitializeApplication, @function
InitializeApplication:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC1, (%esp)
	call	puts
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.cfi_endproc
.LFE1:
	.size	InitializeApplication, .-InitializeApplication
	.section	.rodata
.LC2:
	.string	"Begin application execution."
	.text
	.globl	StartApplication
	.type	StartApplication, @function
StartApplication:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC2, (%esp)
	call	puts
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	StartApplication, .-StartApplication
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
