#include <stdio.h>
#include <stdlib.h>

#define replace(a,b,c,d) a##b##c##d
#define execute replace(m,a,i,n)

int execute()
{
    printf("Hello World");
    exit(0);
}

