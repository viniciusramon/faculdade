import java.util.Scanner;

public class MaiorMenoNumero {
	public static void main(String[] args) {
	        
		 int num, menor_num = 999999999, maior_num = 0;
		
	    for (int i = 0; i < 5; i++){
	    	System.out.print("Digite o " + (i+1) + "� n�mero: ");
	    	@SuppressWarnings("resource")
			Scanner teclado = new Scanner(System.in);
	    	num = teclado.nextInt();
	    	
	    	// verificando o menor n�mero
	    	if (num < menor_num) {
	    		menor_num = num;
	    	};
	        
	    	// verificando o maior n�mero
	    	if (num > maior_num) {
	    		maior_num = num;
	    	};
	    	
	    }    
	    System.out.println("\nMaior n�: " + maior_num );
	    System.out.println("Menor n�: " + menor_num );
	    }
	    
}

