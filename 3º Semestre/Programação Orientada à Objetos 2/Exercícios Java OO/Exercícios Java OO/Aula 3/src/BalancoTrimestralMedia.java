
public class BalancoTrimestralMedia {
	
	public static void main(String[] args) {
        // declaração de variáveis e entrada de dados
		int gastosJaneiro = 15000;
        int gastosFevereiro = 23000;
        int gastosMarco = 17000;
        int gastosTrimestre;
        float mediaMensal;
        
        // cálculos = processamento        
        gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;
        mediaMensal = gastosTrimestre / 3;
        
        // exibição resultado = saída
        System.out.println("O gasto do 1º Trimestre foi de r$ " + gastosTrimestre + " reais.");
        System.out.println("Valor da média mensal r$ " + mediaMensal + " reais.");
	    
	    // comentar em aula
	    //String msg = "Média mensal r$ " + mediaMensal;
	    //System.out.println(msg);
}

	
	

}
