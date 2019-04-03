.data
x : .int 42 /* A global variable named x */
s : .string " hello , world ! "
.text /* Start of the program code section */
.global main /* declares the main identifier */
.type main , % function
main : /* Address of the main function */
LDR X1,=x /* Load address x */
LDR W0,[X1,#0]  /* Load data from x */
BR LR /* Return to the caller */
.end /* End of the program */
