
public class BalancoTrimestralMedia {
	
	public static void main(String[] args) {
        // declara��o de vari�veis e entrada de dados
		int gastosJaneiro = 15000;
        int gastosFevereiro = 23000;
        int gastosMarco = 17000;
        int gastosTrimestre;
        float mediaMensal;
        
        // c�lculos = processamento        
        gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;
        mediaMensal = gastosTrimestre / 3;
        
        // exibi��o resultado = sa�da
        System.out.println("O gasto do 1� Trimestre foi de r$ " + gastosTrimestre + " reais.");
        System.out.println("Valor da m�dia mensal r$ " + mediaMensal + " reais.");
	    
	    // comentar em aula
	    //String msg = "M�dia mensal r$ " + mediaMensal;
	    //System.out.println(msg);
}

	
	

}
