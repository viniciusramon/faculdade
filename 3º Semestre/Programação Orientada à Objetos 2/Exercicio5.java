import java.util.Scanner;

public class Exercicio5 {
	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);

		println("Digite uma frase: ")
		String frase = teclado.nextLine();

		teclado.close();
		
		int totalCharacters = 0;
		char temp;

		for (int i = 0; i < frase.length(); i++) {

			temp = frase.charAt(i);
			if (temp == 'a')
				totalCharacters++;
		}
		JOptionPane.showMessageDialog(null, "A sua frase/texto possui " + frase.length() + " caracteres e apresenta " + totalCharacters + " caracteres com a letra A.\n Texto: " + frase );
		System.exit(0);

}
}
