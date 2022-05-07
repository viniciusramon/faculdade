
public class BalancoTrimestral {

    public static void main(String[] args) {
    	// Entrada
        int gastosJaneiro = 15000;
        int gastosFevereiro = 23000;
        int gastosMarco = 17000;
	    
        // Processamento    
        int gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;
	    float mediaMensal = (float) gastosTrimestre/3; 
        
        // Saída    
        System.out.println("Gasto do 1º Trimestre r$ " + gastosTrimestre + ",00 reais.");
        System.out.println("Valor da média mensal r$ " + mediaMensal + " reais.");
    
        String msg = "Média mensal r$ " + mediaMensal;
	    System.out.println(msg);
    }
	
}
