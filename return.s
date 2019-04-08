	.text
	.file	"return.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #16             // =16
	str	wzr, [sp, #12]
	str	w0, [sp, #8]
	str	x1, [sp]
	ldr	w0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function

	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
