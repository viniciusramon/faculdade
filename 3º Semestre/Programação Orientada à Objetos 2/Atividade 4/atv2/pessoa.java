
public class pessoa{

    private String nome;
    private int idade;
    private float altura;

    public pessoa(String nome){
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public pessoa(int idade){
        this.idade = idade;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public pessoa(float altura){
        this.altura = altura;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public pessoa(String nome, int idade, float altura){
        this.nome = nome;
        this.idade = idade;
        this.altura = altura;
    }
}