// Busca binária - preenchimento crescente
import java.util.Scanner;

class vetor_binaria_crescente{
    int tamanho = 100000; // Coloque aqui o tamanho desejado para o
    static int[] vetor = new int[100000];
    static int num;
    static Scanner teclado = new Scanner(System.in);
    public static void main(String[] arg)
    {
        for(int i=0;i<vetor.length;i++)
        {
            vetor[i] = i;
            System.out.println("Valor para a posição " + i + " do vetor = " + vetor[i]);
        }
        System.out.println("Digite o número procurado:");
        num = teclado.nextInt();
        ordena();
        int pos = pesquisa(num);
        
        if(pos >= 0)
        {
            System.out.println("Achou!");
        }
        else
        {
            System.out.println("Não achou!");
        }
     }
     
     static void ordena()
     {
         for(int i = 0; i < vetor.length; i++)
         {
             int min = i;
             for(int j = (i+1); j < vetor.length; j++)
             {
                 if(vetor[j] < vetor[min]) min = j;
             }
             if(i != min)
             {
                 int temp = vetor[i];
                 vetor[i] = vetor[min];
                 vetor[min] = temp;
             }
         }
     }
     
     static int pesquisa(int n)
     {
         long tempoInicial = System.nanoTime();
         int inicio = 0, fim = vetor.length-1, retorno = -1;
         while(inicio <= fim)
         {
             int meio = (inicio + fim)/2;
             if(vetor[meio] == n)
             {
                 retorno = meio;
             }
             if(n > vetor[meio])
             {
                 inicio = meio + 1;
             }
             else
             {
                 fim = meio - 1;
             }
         }
         long tempoFinal = System.nanoTime();
         System.out.println("Demorou " + (tempoFinal-tempoInicial) + " nanosegundos");
         return retorno;
 }
} 