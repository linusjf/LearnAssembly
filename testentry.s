	.text
	.file	"testentry.c"
	.globl	test                    // -- Begin function test
	.p2align	2
	.type	test,@function
test:                                   // @test
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	orr	w0, wzr, #0x1
	stur	w0, [x29, #-4]          // 4-byte Folded Spill
	mov	x0, x8
	bl	printf
	bl	main
	ldur	w9, [x29, #-4]          // 4-byte Folded Reload
	mov	w0, w9
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        // -- End function
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	wzr, [x29, #-4]
	mov	x0, x8
	bl	printf
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello\n"
	.size	.L.str, 7

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"OK\n"
	.size	.L.str.1, 4


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
