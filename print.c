#include <stdio.h>
#include <stdlib.h>
int main (int argc, char *argv[])
{
    int sum = 0;
    for(char **entry = &argv[1]; *entry != argv[argc];entry++)
		sum += printf("%s\t",*entry);
    sum += printf("\n");
    exit(sum);
}
