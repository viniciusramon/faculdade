/* 1 � Fa�a um programa em C que gere a tabuada do n�mero informado pelo usu�rio.*/

#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	while(1)
	{
		setlocale(LC_ALL,"");
		int num=0,i=0,result=0;
	
		printf("\nDigite o n�mero que voc� deseja obter a tabuada: ");
		scanf("%d",&num);
	
		for(i=0;i<=10;i++)
		{
			result=num*i;
			printf("\n%d x %d = %d",num,i,result);
		}
	}
}
