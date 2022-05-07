/*
Utilizando a tabela verdade, faça 
operações com 3 variáveis int com and/or/not
*/

import java.util.Scanner;

public class TabelaVerdade {
	
	public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Valor de A: ");
        float a = teclado.nextFloat();

        System.out.println("Valor de B: ");
        float b = teclado.nextFloat();

        System.out.println("Valor de C:");
        float c = teclado.nextFloat();

        teclado.close();

        // AND
        if (a>b && a>c) {
        	System.out.println("A é maior que B e C" );

        }
        else if (b>a && b>c) {
        	System.out.println("B é maior que A e C" );
        }
        else if (c>a && c>b) {
        	System.out.println("C é maior que A e B" );
        }
        else if (c>a && c==b) {
        	System.out.println("B=C e maior que A");
        }
        else if (a>c && a==b) {
        	System.out.println("A=B e maior que C");
        }
        else if (a>b && a==c) {
        	System.out.println("A=C e maior que B");
        }
        else
        	System.out.println("A = B = C");
	}

//	continua....
}




