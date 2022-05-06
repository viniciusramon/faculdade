// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 1 - Você deverá criar uma classe em Java, que imprima o seu nome 100 vezes.
//  Faça 3 versões deste programa:
//  1. Uma versão com uma declaração while
//  2. Uma versão com uma declaração do-while
//  3. Uma versão com uma declaração for

public class nome100{
    public static void main(String[] args) {

        String nome = "vinicius";
        int i = 0;
        int j = 0;

        System.out.println("Parte com While");
        while(i < 100){

            System.out.println(i + " " + nome);

            i++;

        }

        System.out.println("");
        System.out.println("Parte com Do-While");

        do{
            System.out.println(j + " " + nome);
            j++;
        } while(j < 100);

        System.out.println("");
        System.out.println("Parte com For");

        for(int k=0;k<100;k++){
            System.out.println(k + " " + nome);
        }
    }
}