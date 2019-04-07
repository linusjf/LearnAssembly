.section .text
.global main //give the symbol add external linkage
main:
 ADC w0, w0, w1 //add input arguments
 ret //return from subroutine
  //end of program
