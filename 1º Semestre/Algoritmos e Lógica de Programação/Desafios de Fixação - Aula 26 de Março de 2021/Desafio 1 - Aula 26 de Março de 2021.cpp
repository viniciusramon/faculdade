#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int num=0, next=0, prev=0;
	
	while(1)
	{
		printf("\nDigite um n�mero: ");
		scanf("%d",&num);
		
		next=++num;
		prev=(--num)-1;
		
		printf("\nO n�mero antecessor de %d � %d e o n�mero sucessor de %d � %d",num,prev,num,next);
	}
}
