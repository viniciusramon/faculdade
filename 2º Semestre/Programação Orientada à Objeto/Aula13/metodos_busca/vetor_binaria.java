import java.util.Scanner;

class vetor_binaria{
    static int[] vetor = new int[10];
    static int num;
    static Scanner teclado = new Scanner(System.in);
    public static void main(String[] arg){
        for(int i=0;i<vetor.length;i++){
            System.out.println("Digite o " + i + " valor para o vetor: ");
            vetor[i] = teclado.nextInt();
        }
        System.out.println("Digite o número procurado: ");
        num = teclado.nextInt();
        ordena();
        int pos = pesquisa(num);
        
        if(pos>0){
            System.out.println("Achou na posição " + pos);
        }
        else{
            System.out.println("Não achou!");
        }
    }
    
    static void ordena(){
        for(int i=0;i<vetor.length;i++){
            int min = i;
            for(int j=(i+1);j<vetor.length;j++){
                if(vetor[j]<vetor[min]) min=j;
            }
            if(i!=min){
                int temp = vetor[i];
                vetor[i] = vetor[min];
                vetor[min] = temp;
                
            }
        }
    }
    
    static int pesquisa(int n){
        int inicio=0, fim=vetor.length-1, retorno = -1;
        while(inicio<=fim){
            int meio = (inicio+fim)/2;
            if(vetor[meio] == n){
                retorno = meio;
                break;
            }
            if(n>vetor[meio]){
                inicio = meio+1;
            }
            else{
                fim = meio-1;
            }
        }
        return retorno;
    }
}