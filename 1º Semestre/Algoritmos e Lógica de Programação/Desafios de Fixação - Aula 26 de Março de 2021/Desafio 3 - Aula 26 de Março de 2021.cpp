#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	int num=0,tab=0,i=0;
	
	while(1)
	{
		printf("\nDigite um número: ");
		scanf("%d",&num);
		
		printf("\nA tabuada do número %d é:",num);
		
		for(i=0;i<=10;i++)
		{
			tab=num*i;
			printf("\n%d x %d = %d",num,i,tab);
		}
	}
}
