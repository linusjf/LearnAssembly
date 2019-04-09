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
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	ldur	w0, [x29, #-8]
	subs	w0, w0, #1              // =1
	str	w0, [sp, #8]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #0
	ldr	w9, [sp, #8]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	x0, [x8]
	bl	atoi
	ldr	w10, [sp, #12]
	add	w10, w10, w0
	str	w10, [sp, #12]
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #-1
	ldr	w9, [sp, #8]
	add	w8, w9, w8
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	w0, [sp, #12]
	bl	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function

	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
