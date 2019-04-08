.data
string: .asciz "Azeria Labs\n"  //.asciz adds a null-byte to the end of the string
after_string:
.set size_of_string, after_string - string

.text
.global main

main:
   mov w0, #1               //STDOUT
   ldr w1, addr_of_string   //memory address of string
   mov w2, #size_of_string  //size of string
   mov w7, #4              //write syscall
   svc #0                   // invoke syscall

_exit:
   mov w7, #1               //exit syscall
   svc 0                    //invoke syscall

addr_of_string: .word string
