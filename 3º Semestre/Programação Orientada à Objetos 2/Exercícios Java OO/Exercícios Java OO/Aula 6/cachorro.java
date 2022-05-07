public class cachorro {

	// método construtor, 1 parâmetro (tamanho)
	public cachorro(int tamanho) {
		this.tamanho = tamanho;
	}

	// método construtor, 1 parâmetro (raca)
	public cachorro(String raca) {
		this.raca = raca;
	}

	// método construtor, 2 parâmetros
	public cachorro(int tamanho, String raca) {
		this.tamanho = tamanho;
		this.raca = raca;
	}

	private int tamanho;
	private String raca;

	public static void latir() {
		System.out.println("Cachorro latindo!!");
	}

	public int getTamanho() {
		return tamanho;
	}

	public void setTamanho(int tamanho) {
		this.tamanho = tamanho;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	public static void main(String[] args){
		cachorro.latir();
	}
	
}
