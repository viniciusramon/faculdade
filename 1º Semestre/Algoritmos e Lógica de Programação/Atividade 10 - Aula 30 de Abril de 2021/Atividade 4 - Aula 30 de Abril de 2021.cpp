/* 4- Construa um programa em C que calcule a m�dia aritm�tica de um conjunto de n�meros pares que forem fornecidos pelo usu�rio.
O valor de finaliza��o ser� a entrada do n�mero 0.
Observe que nada impede que o usu�rio forne�a quantos n�meros �mpares quiser, com a ressalva que n�o poder�o ser acumulados. */

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
		printf("\nA m�dia dos n�meros pares � de %.2f",media/(cont-1));
		
		while(1);
}
					
			

