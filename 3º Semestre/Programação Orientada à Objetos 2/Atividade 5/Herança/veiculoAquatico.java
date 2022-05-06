package Herança;

public class veiculoAquatico extends veiculo {
    private int qtdMotor;
    private boolean submerso;
    private float peso;

    public void setQtdMotor(int qtdMotor) {
        this.qtdMotor = qtdMotor;
    }

    public int getQtdMotor() {
        return qtdMotor;
    }

    public void setSubmerso(Boolean submerso) {
        this.submerso = submerso;
    }

    public boolean getSubmerso() {
        return submerso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public float getPeso() {
        return peso;
    }

}
