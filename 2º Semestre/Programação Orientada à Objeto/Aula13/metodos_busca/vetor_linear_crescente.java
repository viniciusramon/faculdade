// Busca linear - preenchimento crescente
import java.util.Scanner;
class vetor_linear_crescente {
    static int tamanho = 1000000; // Coloque aqui o tamanho desejado para o vetor
    static int[] vetor = new int[tamanho];
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
        int pos = pesquisa(num);
        if(pos >= 0)
        {
            System.out.println("Achou na posição " + pos);
        }
        else
        {
            System.out.println("Não achou!");
        }
     }
     
    static int pesquisa(int n)
     {
         long tempoInicial = System.currentTimeMillis();
         int retorno = -1;
         for(int i=0;i<vetor.length;i++)
         {
             if(vetor[i] == n)
             {
                 retorno = i;
                 break;
             }
         }
         long tempoFinal = System.currentTimeMillis();
         System.out.println("Demorou " + (tempoFinal-tempoInicial) + " milissegundos" );
         return retorno;
     }
} 