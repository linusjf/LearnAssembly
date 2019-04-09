#include <stdio.h>
#include <stdlib.h>
int main (int argc, char **argv)
{
  int sum = 0;
for (int i = argc-1; i > 0; --i)
		sum += atoi(argv[i]);
	exit(sum);
}
