import java.util.Scanner;

class vetor{
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
        int pos = pesquisa(num);
        if(pos>=0){
            System.out.println("Achou na posição " + pos);
        }
        else{
            System.out.println("Não achou!");
        }
    }
    static int pesquisa(int n){
        int retorno = -1;
        for(int i=0;i<vetor.length;i++){
            if(vetor[i] == n){
                retorno = i;
                break;
            }
        }
        return retorno;
    }
}