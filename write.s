.data
.balign 8
labs: .asciz "Azeria Labs\n"  //.asciz adds a null-byte to the end of the string
.balign 8
after_labs:
.set size_of_labs, after_labs - labs
.balign 8
addr_of_labs: .dword labs
.balign 8
.text
.global main

main:
  mov x0, #1               //STDOUT
  ldr x1,addr_of_labs   //memory address of labs
   mov w2, #size_of_labs //size of labs
  mov x8,#64
  svc #0x0                  // invoke syscall

_exit:
  mov x8, #93               //exit syscall
   svc #0x0                 //invoke syscall
