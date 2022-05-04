import java.util.Scanner;

public class insercao{
    public static void main(String[] args){
        Scanner teclado = new Scanner(System.in);
        int x, i, j, temp;
        int v[] = {0,0,0,0,0};
        
        for(i=0;i<5;i++){
            System.out.println("Digite o "+(i+1)+" valor para o vetor: ");
            v[i] = teclado.nextInt();
            j=i;
            
            if(i>0)
            {
                while(v[j] < v[j-1])
                {
                    temp = v[j];
                    v[j] = v[j-1];
                    v[j-1] = temp;
                    j--;
                    if(j==0) break;
                }
            }
        }
        System.out.println();
        System.out.println("\nVetor ordenado: ");
        for(i=0;i<5;i++) System.out.println(v[i]+ "\t");
    }
}