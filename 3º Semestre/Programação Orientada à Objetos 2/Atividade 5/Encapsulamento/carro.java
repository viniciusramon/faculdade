package Encapsulamento;

public class carro {

    private String marca;
    private String modelo;
    private String cor;
    private String combustivel;

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

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCor() {
        return cor;
    }

    public void setCombustivel(String combustivel) {
        this.combustivel = combustivel;
    }

    public String getCombustivel() {
        return combustivel;
    }

    public void ligar() {
        System.out.println("Ligando!!");
    }

    public void acelerar() {
        System.out.println("Acelerando!! Vrum Vrum Vrum!!");
    }

    public void frear() {
        System.out.println("Freiando!! Skrrrrrrrr!!");
    }

}