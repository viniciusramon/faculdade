/* 4- Construa um programa em C que calcule a média aritmética de um conjunto de números pares que forem fornecidos pelo usuário.
O valor de finalização será a entrada do número 0.
Observe que nada impede que o usuário forneça quantos números ímpares quiser, com a ressalva que não poderão ser acumulados. */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

main()
{
	
		setlocale(LC_ALL,"");
		
		int condition=1,cont=0,num=0;
		float media=0;
		
		while(condition!=0)
		{
			printf("\nDigite um valor: ");
			scanf("%d",&num);
			
			if(num%2==0)
			{
				media=media+num;
				cont++;
			}
			if(num==0)
			{
				fflush(stdin);
				condition=0;
			}
		}
		printf("\nA média dos números pares é de %.2f",media/(cont-1));
		
		while(1);
}
					
			

