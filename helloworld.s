.data
.balign 4
x : .int 42 /* A global variable named x */
.balign 4
s : .asciz " hello , world ! "
.balign 8
adr_x: .dword x
.text /* Start of the program code section */
.global main /* declares the main identifier */
.type main , % function
main : /* Address of the main function */
LDR X1,adr_x /* Load address x */
LDR X0,[X1,#0]  /* Load data from x */
ret/* Return to the caller */
 /* End of the program */
