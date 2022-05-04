#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int num=0, next=0, prev=0;
	
	while(1)
	{
		printf("\nDigite um número: ");
		scanf("%d",&num);
		
		next=++num;
		prev=(--num)-1;
		
		printf("\nO número antecessor de %d é %d e o número sucessor de %d é %d",num,prev,num,next);
	}
}
