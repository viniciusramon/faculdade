class produtos{
    int codigo;
    String nome;
    int quantidade;
    private double preco;
    
    void seta_preco(double p){
        preco = p;
    }
    
    double retorna_preco(){
        return preco;
    }
}