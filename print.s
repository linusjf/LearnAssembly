	.text
	.file	"print.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	x8, xzr, #0x8
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	adrp	x10, .L.str
	add	x10, x10, :lo12:.L.str
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	wzr, [x29, #-20]
	ldur	x1, [x29, #-16]
	add	x8, x1, x8
	str	x8, [sp, #16]
	str	x9, [sp, #8]            // 8-byte Folded Spill
	str	x10, [sp]               // 8-byte Folded Spill
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldur	x10, [x29, #-16]
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
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	printf
	ldur	w9, [x29, #-20]
	add	w9, w9, w0
	stur	w9, [x29, #-20]
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]
	add	x8, x9, x8
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	printf
	ldur	w8, [x29, #-20]
	add	w8, w8, w0
	stur	w8, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\t"
	.size	.L.str, 4

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
