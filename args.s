	.text
	.file	"args.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	orr	x8, xzr, #0x8
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	ldr	x1, [sp, #16]
	add	x8, x1, x8
	str	x8, [sp]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	x10, [sp, #16]
	ldur	w11, [x29, #-8]
	mov	w12, w11
	sxtw	x12, w12
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	cmp	x9, x8
	cset	w11, ne
	tbnz	w11, #0, .LBB0_2
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	atoi
	ldr	w9, [sp, #12]
	add	w9, w9, w0
	str	w9, [sp, #12]
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp]
	add	x8, x9, x8
	str	x8, [sp]
	b	.LBB0_1
.LBB0_4:
	ldr	w0, [sp, #12]
	bl	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function

	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
