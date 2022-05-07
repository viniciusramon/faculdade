import java.util.Scanner;

public class MaiorMenoNumero {
	public static void main(String[] args) {
	        
		 int num, menor_num = 999999999, maior_num = 0;
		
	    for (int i = 0; i < 5; i++){
	    	System.out.print("Digite o " + (i+1) + "º número: ");
	    	@SuppressWarnings("resource")
			Scanner teclado = new Scanner(System.in);
	    	num = teclado.nextInt();
	    	
	    	// verificando o menor número
	    	if (num < menor_num) {
	    		menor_num = num;
	    	};
	        
	    	// verificando o maior número
	    	if (num > maior_num) {
	    		maior_num = num;
	    	};
	    	
	    }    
	    System.out.println("\nMaior nº: " + maior_num );
	    System.out.println("Menor nº: " + menor_num );
	    }
	    
}

