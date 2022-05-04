#include<stdio.h>
#include<locale.h>

main()
{
	setlocale(LC_ALL,"");
	float n1=0,n2=0,media=0,mg=0;
	int i=0,cont=0;
			
	while(1)
	{
		for(i=0;i<10;i++)
		{
			printf("\nAluno %d",i);
			printf("\nDigite a primeira nota do aluno: ");
			scanf("%f",&n1);
			printf("\nDigite a segunda nota do aluno: ");
			scanf("%f",&n2);
			
			media=(n1+n2)/2;
			
			printf("\nA média do aluno %d foi de %.2f.\n",i,media);
			
			mg=mg+media;	
			cont++;
		}
		printf("\nA média total da sala é de %.2f.\n",mg/cont);
	}

}
