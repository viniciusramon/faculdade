public abstract class Animal {
    
    private String nome;
    public static final int MAX_VALUE = 2147483647;
    
    public abstract String emitirSom();

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
