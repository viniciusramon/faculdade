public class animal {

    public animal(String tipo) {
        this.tipo = tipo;
    }

    public animal(int idade) {
        this.idade = idade;
    }

    public animal(float altura) {
        this.peso = peso;
    }

    public animal(String tipo, int idade, float peso) {
        this.tipo = tipo;
        this.idade = idade;
        this.peso = peso;
    }
    
    private String tipo;
    private int idade;
    private float peso;

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }
    
}
