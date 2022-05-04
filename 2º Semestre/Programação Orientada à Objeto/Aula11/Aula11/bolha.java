import java.util.Scanner;

public class bolha
{
    public static void main(String[] args){
        Scanner teclado = new Scanner(System.in);
        int i, temp, tam;
        boolean trocou;
        int[]v = new int[5];
        
        for(i=0;i<5;i++)
        {
            System.out.println("Digite o " +(i+1)+ "º numero do vetor");
            v[i] = teclado.nextInt();
        }
        System.out.println();
        System.out.println("Vetor original: ");
        
        for(i=0;i<5;i++) System.out.println(v[i]+ "\t");
        
        tam = v.length;
        
        do{
            trocou = false;
            
            for(i=0;i<(tam-1);i++)
            {
                if(v[i] > v[i+1])
                {
                    temp = v[i];
                    v[i] = v[i+1];
                    v[i+1] = temp;
                    trocou = true;
                }
            }
        } while(trocou);
        
        System.out.println();
        System.out.println("Vetor ordenado: ");
        for(i=0;i<5;i++) System.out.println(v[i] + "\t");
    }
}