import java.util.Scanner;

public class ExemploScanner {
		
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		
		
		Scanner entrada = new Scanner(System.in);
		
		System.out.println("Digite um nome: ");
		String nome = entrada.nextLine();
		System.out.println(nome);
	}
}

