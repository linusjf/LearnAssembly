	.text
	.file	"print.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-8]
	subs	w0, w0, #1              // =1
	str	w0, [sp, #12]
	str	x8, [sp]                // 8-byte Folded Spill
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #0
	ldr	w9, [sp, #12]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #12]
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	x1, [x8]
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	printf
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #-1
	ldr	w9, [sp, #12]
	add	w8, w9, w8
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
