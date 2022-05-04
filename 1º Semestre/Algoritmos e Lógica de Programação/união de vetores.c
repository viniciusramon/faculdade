/*imprima a união de dois vetores*/

#include <stdio.h>

int main()
{


	int v1[ ]={1,2,3,4}, v2[ ]={4,4,5,6};
	int uniao[8];
	int i, j, k, m;
	int n=0;

	/*analisa o primeiro vetor*/
  for(i=0; i<4; i++)
	{
		for(j=0; j<4; j++)
		{
			if(v1[i]!=v2[j])
			{
			   for(k=0;k<n;k++)
         {
            if(v1[i]==uniao[k])
                break;
         }
         if(k==n)
         {
          uniao[n]=v1[i];
          n++;
         }
               
      }
		}

  }

  /*analisa o segundo vetor, descartando repetições dentro do uniao[]*/
  for(i=0; i<4; i++)
  {
    for(j=0; j<4; j++)
    {
      if(v1[i]!=v2[j])
      {
         for(k=0;k<n;k++)
         {
            if(v2[j]==uniao[k])
                break;
         }
         if(k==n)
         {
          uniao[n]=v2[j];
          n++;
         }
               
      }
    }

  }

	printf("Seus elementos  da uniao sao:\n");

	for(m=0;m<n;m++)
    {
        printf("%i\n", uniao[m]);
    }

return 0;
}
