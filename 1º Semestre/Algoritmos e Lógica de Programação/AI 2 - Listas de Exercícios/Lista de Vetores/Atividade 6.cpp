/* 6 - A s�rie de Fibonacci � formada pela seguinte sequ�ncia: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, etc.
Escreva um algoritmo que gere a s�rie de Fibonacci at� o vig�simo termo. */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

main()
{
	
		setlocale(LC_ALL,"");
		
		int i=0,num=0,valor=0,aux=0,a=0,b=0;
		
		a=0;
		b=1;
		
		printf("\nA s�rie de Fibonacci at� o vig�simo termo �: ");
		printf("\n%d",b);

		for(i=0;i<20;i++)
		{
			aux=a+b;
			a=b;
			b=aux;
			printf("\n%d",aux);
		}
		
		
	while(1);

}
					
			

