#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	
	float nota1=0,nota2=0,media=0,mediageral=0;
	int x=0;
	
	while(x<10)
	{
		printf("\nAluno %d\n",x);
		printf("Entre com a nota 1: ");
		scanf("%f",&nota1);
		printf("\nEntre com a nota 2: ");
		scanf("%f",&nota2);
		
		media=(nota1+nota2)/2;
		
		if(media>=6)
		{
			printf("\nSua m�dia � %.2f. Aprovado!!\n",media);
		}
		else
		{
			printf("\nSua m�dia � %.2f. Reprovado!!\n",media);

		}
		x++;
		mediageral=mediageral+media;
	}
	printf("\nA m�dia geral da sala � %.2f\n",mediageral/10);
	
	while(1);
}
