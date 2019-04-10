fmt: .string "Hello World!\n"
// our format string
.balign 4
// ensure aligned to a 4-byte boundary
.global main
// make main visible to linker
main:
	stp x29, x30, [sp, -16]!
// allocate stack space
	mov	x29, sp
// update fp print
	adrp x0, fmt
// set format string high bits
	add x0, x0, :lo12:fmt
// set format string low bits
	bl printf
// call printf
// exit
	mov w0, 0
// set return value
	ldp x29, x30, [sp], 16
// restore stack
	ret
// return to OS
