	.arch armv8-a
	.text
	.align 2
	.global main

main:
	stp x19, x20, [sp, -48]!
	stp x21, x22, [sp, 16]
	stp x23, x30, [sp, 32]
	mov w19, w0 // w19 = a
	mov w20, w1 // w20 = b
	mov w21, 4 // i = 4
	mov w22, 5
	// set divisor
.LC2:
	sdiv w1, w20, w22 // w1 = b - ((b / 5) * 5)
	msub w1, w1, w22, w20 //
	adr x0, .LC0 // x0 = "%i\n"
	bl printf

	add w20, w20, w19 // b += a
	subs w21, w21, 1 // i = i - 1
	bne .LC2 //
	ldp x19, x20, [sp], 16
	ldp x21, x22, [sp], 16
	ldp x23, x30, [sp], 16
	ret
.LC0:
	.asciz "%i\n"
