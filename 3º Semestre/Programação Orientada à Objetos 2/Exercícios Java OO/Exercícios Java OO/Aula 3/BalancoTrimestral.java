
public class BalancoTrimestral {

    public static void main(String[] args) {
    	// Entrada
        int gastosJaneiro = 15000;
        int gastosFevereiro = 23000;
        int gastosMarco = 17000;
	    
        // Processamento    
        int gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;
	    float mediaMensal = (float) gastosTrimestre/3; 
        
        // Sa�da    
        System.out.println("Gasto do 1� Trimestre r$ " + gastosTrimestre + ",00 reais.");
        System.out.println("Valor da m�dia mensal r$ " + mediaMensal + " reais.");
    
        String msg = "M�dia mensal r$ " + mediaMensal;
	    System.out.println(msg);
    }
	
}
