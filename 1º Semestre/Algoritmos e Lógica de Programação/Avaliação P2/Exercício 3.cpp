/* 3. Elabore um algoritmo que calcule N! (fatorial de N), sendo que o valor inteiro de N � fornecido pelo usu�rio. Sabendo que: (2 pontos):
N! = 1 x 2 x 3 x .... x(N-1)xN;
0! = 1 */

#include<stdio.h>
#include<stdlib.h> 
#include<locale.h>

main()
{
	while(1)
	{
		setlocale(LC_ALL,"");
		
		int num=0,valor=0,fat=0;
		
		printf("\nDigite o n�mero o qual se deseja obter o N!(fatorial): ");
		scanf("%d",&num);
		valor=num;
		
		for(fat=1;num>1;num=num-1)
		{
			fat=fat*num;
		}
		printf("\nO fatorial calculado de %d! �: %d",valor,fat);
		
	}	
}
					
			

