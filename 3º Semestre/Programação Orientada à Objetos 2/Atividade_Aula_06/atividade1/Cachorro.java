package atividade1;

public class Cachorro {

    public Cachorro(int tamanho) {
        this.tamanho = tamanho;
    }

    public Cachorro(String raca) {
        this.raca = raca;
    }

    public Cachorro(int tamanho, String raca) {
        this.tamanho = tamanho;
        this.raca = raca;
    }
    
    private int tamanho;
    private String raca;

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
    
}
