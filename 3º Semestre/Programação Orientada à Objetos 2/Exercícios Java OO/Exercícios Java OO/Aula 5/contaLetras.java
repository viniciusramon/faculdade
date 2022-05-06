import java.util.Scanner;

public class contaLetras {

	public static void main(String[] args) {

		String texto;
		int qt_letras = 0, qt_a = 0;
		Scanner teclado = new Scanner(System.in);

		System.out.print("Digite um texto: ");
		texto = teclado.nextLine();

		for (int i = 0; i < texto.length(); i++) {
			if (Character.toUpperCase(texto.charAt(i)) == 'A')
				qt_a++;

			if (texto.charAt(i) != ' ')
				qt_letras++;
		}

		System.out.println("\nA frase possui " + qt_letras + " letras e " + qt_a + " letras 'a'");
	}

}
