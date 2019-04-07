.section .text,"ax"    // 5.7 Sections
        .balign 4
        .global main
main:                          // 5.4 Labels
        MOV      x5,#0x64      // W5 = 100  5.9 Numeric literals
        MOV      x4,#0         // W4 = 0
        B        test_loop     // branch to test_loop
loop:
        ADD      x5,x5,#1      // Add 1 to W5
        ADD      x4,x4,#1      // Add 1 to W4
test_loop:
        CMP      x4,#0xa       // if W4 < 10, branch back to loop
        BLT      loop
        .end                   // 5.18 Miscellaneous directives
