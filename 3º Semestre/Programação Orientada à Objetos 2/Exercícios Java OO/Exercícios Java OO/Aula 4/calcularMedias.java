
import java.util.Scanner;

public class calcularMedias {


    public static void main(String[] args){
        
        double valor1, valor2, valor3, peso1, peso2, peso3, ma, mp;
        
        Scanner teclado = new Scanner(System.in);
        
        System.out.print("Informe o 1o. valor: ");
        valor1 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe o 2o. valor:  ");
        valor2 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe o 3o valor: ");
        valor3 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe o peso do 1o. valor: ");
        peso1 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe o peso do 2o. valor:  ");
        peso2 = teclado.nextDouble();
        teclado.nextLine(); 
        
        System.out.print("Informe o peso do 3o. valor: ");
        peso3 = teclado.nextDouble();
        
        ma = (valor1 + valor2 + valor3) / 3;
        mp = ((peso1 * valor1) + (peso2 * valor2) + (peso3 * valor3)) / 3;
        
        System.out.println("\nMédia aritmética: " + ma + "\nMédia Ponderada: " + mp);
    }
    
}
