import java.util.Scanner;

class selecao {
    public static void main (String[] args){
        int i, j, min;
        int[]v = new int[5];
        Scanner teclado = new Scanner(System.in);
        
        for(i=0;i<5;i++){
            System.out.println("Digite o "+(i+1)+" valor do vetor: ");
            v[i]=teclado.nextInt();
        }
        System.out.println();
        System.out.println("O vetor original: ");
        
        for(i=0;i<5;i++) System.out.println(v[i]+ "\t");
        
        for(i=0;i<4;i++){
            min =i;
            for(j=(i+1);j<5;j++){
                if(v[j]<v[min]) min=j;
            }
            if(i!=min){
                int temp = v[i];
                v[i] = v[min];
                v[min] = temp;
            }
        }
        System.out.println();
        System.out.println("O vetor ordenado: ");
        for(i=0;i<5;i++) System.out.println(v[i] + "\t");
    }
}