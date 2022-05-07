import java.util.Scanner;

public class contaLetras {
	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);


		System.out.println("Digite uma frase: ");
		String frase = teclado.nextLine();

		teclado.close();
		
		int total = 0;
		int contaA = 0;

		for (int i = 0; i <= frase.length(); i++){
            if(frase.charAt(i) != " "){
                total++;

            }
            if((frase.charAt(i)== "A") || (frase.charAt(i)=="a")){
                contaA++;
            }
		}

}
}
