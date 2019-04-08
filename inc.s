// test.s
.text
.globl main
main:
add w0, w0, #1 + argc
// w0 ← w0 + 1
ret
