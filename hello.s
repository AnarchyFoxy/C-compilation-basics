	.file	"hello.c"
	.text
	.section	.rodata
.LC0:
	.string	"Hello, Anarchy Foxy World!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %edi
	call	puts
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 13.1.1 20230522 [revision dd36656ada05731c069ecd5b1878380294fb1f3e]"
	.section	.note.GNU-stack,"",@progbits
