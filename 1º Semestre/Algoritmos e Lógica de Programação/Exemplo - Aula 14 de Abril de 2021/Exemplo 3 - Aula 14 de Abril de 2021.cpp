#include<stdio.h>

main()
{
   int x = 0;
   int acumulador = 0;
	
	do   
	{ 
       acumulador = acumulador + x;
       printf("x: %d  total: %d\n", x, acumulador);
       x++;
  	} while(x < 10);
  	
  	while(1);
}

