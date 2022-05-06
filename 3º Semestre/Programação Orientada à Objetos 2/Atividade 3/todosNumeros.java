// 	Nome: Vinicius Ramon		RA:0157/12-3
//	Exercício 3 - Crie uma nova classe em Java, que solicite ao usuário um valor inicial e um final e a classe imprima todos os números entre esses dois valores.

import java.util.Scanner;

public class todosNumeros {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Digite o valor inicial: ");
        int vInicial = teclado.nextInt();

        System.out.println("Digite o valor final: ");
        int vfinal = teclado.nextInt();

        teclado.close();

        if(vInicial<vfinal)
        {
            System.out.println("Numeros entre " + vInicial + " e " + vfinal);

            for(int i=vInicial;i<=vfinal;i++){
                System.out.println(i);
            }
        }
        else{
            System.out.println("O valor inicial tem que ser menor que o valor final!!");
        }
    }
    
}
