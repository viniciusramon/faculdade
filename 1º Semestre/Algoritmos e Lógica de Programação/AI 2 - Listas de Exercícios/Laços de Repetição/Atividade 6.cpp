#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int n=0,i=0,cont=0;	
	
	for(i=0;i<=30;i++)
		{
			n=i;
			
			if(n%2==0)
			{
				printf("\n%d � um numero par!",i);
				cont++;
			}
			else
			{
				printf("\n%d n�o � um numero par!",i);
			}
		}
		
		printf("\nA quantidade de n�meros pares de 1 a 30 � de: %d",cont);
		
	while(1);
}
