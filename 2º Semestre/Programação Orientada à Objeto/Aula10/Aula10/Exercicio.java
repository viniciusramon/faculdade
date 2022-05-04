import java.util.Scanner;
import java.util.Arrays;

class Exercicio
{
    public static void main (String args[])
    {
        Scanner keyboard = new Scanner(System.in);
        int[] numero = new int[3];
        for(int i=0;i<3;i++)
        {
            System.out.println("Digite um número para o vetor: ");
            numero[i] = keyboard.nextInt();
        }
        
        Arrays.sort(numero); 
        System.out.println(Arrays.toString(numero));
    }
}