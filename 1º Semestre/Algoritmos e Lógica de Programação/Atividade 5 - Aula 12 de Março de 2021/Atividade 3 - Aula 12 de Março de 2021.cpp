#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float num=0;
	int result=0, resultfinal=0;
	
	while(1)
	{
		printf("\nDigite um número: ");
		scanf("%f",&num);
		
		result=num;
		resultfinal=result%2;
				
		if(resultfinal==1)
		{
			printf("\nO número digitado é IMPAR!!");
		}
		else
		{
			printf("\nO número digitado é PAR!!");

		}
	}
}
