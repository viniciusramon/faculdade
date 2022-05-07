package Herança;

public class veiculo {
    private String meioTransporte; // (Terrestre, Aéreo, Aquático, Espacial, etc.);
    private String marca;
    private String modelo;
    private String tipo; // (automóvel, caminhonete, caminhão, etc.);
    private String especie; // (passageiro, carga, misto, etc.);
    private String categoria; // (particular, aluguel, oficial, etc.);

    private String combustivel;
    private String cor;
    private int qtdPassageiros;

    public void setMeioTransporte(String meioTransporte) {
        this.meioTransporte = meioTransporte;
    }

    public String getMeioTransporte() {
        return meioTransporte;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getModelo() {
        return modelo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getEspecie() {
        return especie;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCombustivel(String combustivel) {
        this.combustivel = combustivel;
    }

    public String getCombustivel() {
        return combustivel;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCor() {
        return cor;
    }

    public void setPassageiros(int qtdPassageiros) {
        this.qtdPassageiros = qtdPassageiros;
    }

    public int getPassageiros() {
        return qtdPassageiros;
    }

}
