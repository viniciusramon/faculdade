
import java.util.Scanner;

public class ConsumoMedioKmLitro {
    public static void main(String[] args){
	        
        Scanner teclado = new Scanner(System.in);
        
        double kmP, consumo, valorComb;
        double medKmLt, valorGastoKm;
        
        System.out.print("Informe a km percorrida: ");
        kmP = teclado.nextDouble();
        
        //limpar o buffer
        teclado.nextLine(); 
	        
        System.out.print("Informe o consumo de combustivel: ");
        consumo = teclado.nextDouble();
        teclado.nextLine(); //Para Limpar o Buffer
	        
        System.out.print("Qual o valor do combustivel? ");
        valorComb = teclado.nextDouble();
        
        medKmLt = kmP / consumo;
        valorGastoKm = (consumo / kmP) * valorComb;
	        
        System.out.println("\nMedia(Km/L): " + medKmLt + "\nPreço por Km: " + valorGastoKm);
    }

}
