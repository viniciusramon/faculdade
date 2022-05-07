import java.util.Random;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;
public class transformaGrausFC {
	public static void main(String[] args){
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite a temperatura em Fahrenheit: ");
		float far = entrada.nextFloat();
		
		float cel = (float) ((far - 32) / 1.8);
	
		System.out.println(far + "º Fahrenheit = " + cel + "º. Celsius");
		
	}
}




