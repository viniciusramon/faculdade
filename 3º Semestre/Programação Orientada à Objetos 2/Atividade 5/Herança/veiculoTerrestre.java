package Herança;

public class veiculoTerrestre extends veiculo {
    private int qtdRodas;
    private String carroceria; // (cabine simples, cabine dupla, etc.);
    private String tracao; // (tipo de tração automotor, elétrico, de propulsão humana, de tração animal,
                           // reboque ou semi-reboque)

    public void setQtdRodas(int qtdRodas) {
        this.qtdRodas = qtdRodas;
    }

    public int getQtdRodas() {
        return qtdRodas;
    }

    public void setCarroceria(String carroceria) {
        this.carroceria = carroceria;
    }

    public String getCarroceria() {
        return carroceria;
    }

    public void setTracao(String tracao) {
        this.tracao = tracao;
    }

    public String getTracao() {
        return tracao;
    }
}
