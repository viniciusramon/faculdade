import java.util.Scanner;

class Le_Vetor
{
    public static void main (String args[])
    {
        Scanner t = new Scanner(System.in);
        int[] vetor = new int[5];
        for(int i=0;i<5;i++)
        {
            System.out.println("Digite um número para o vetor: ");
            vetor[i] = t.nextInt();
        }
        
        System.out.println("Valores digitados no vetpor: ");
        for(int i=0;i<5;i++) System.out.println(vetor[i]);
    }
}