#include <stdio.h>
#include <unistd.h>
void _start()
{
    printf("Inside _start\n");
    _exit(0);
}
