/* Envio exercício aula 04
1. Construa uma classe que contenha um método executável que calcule o diâmetro e o perímetro 
de uma circunferência cuja o raio deverá ser informado pelo usuário;
*/

import java.util.Scanner;
public class diametro_perimetro
{
    public static void main(String args[]) {
    Scanner read = new Scanner(System.in);
        double r = read.nextDouble();
        double d = r * 2;
        double p = r * Math.PI * 2;
        double pArredondado = Math.round(p);
        
        System.out.println ("O diametro sera de " + d);
        System.out.println ("O perimetro sera de " + pArredondado);
    }
}
