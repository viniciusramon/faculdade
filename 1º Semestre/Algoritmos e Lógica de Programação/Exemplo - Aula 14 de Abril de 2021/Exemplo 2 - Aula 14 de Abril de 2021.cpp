#include<stdio.h>

main()
{
   int x = 0;
   int acumulador = 0;
   
   while(x < 10)   
	{ 
       acumulador = acumulador + x;
       printf("x: %d  total: %d\n",x, acumulador);
       x++;
   } 
   while(1);
}

