import java.io.*;

public class Consulta{
    public static boolean pesquisar(String arquivo, String pesquisa) throws FileNotFoundException, IOException{
        File file = new File(arquivo);
        boolean retorno = false;
        
        if(!file.exists()){
            System.out.println("Arquivo não existe!");
            return retorno;
        }
        BufferedReader br = new BufferedReader(new FileReader(arquivo));
        String saida ="";
        String linha;
        while((linha = br.readLine()) != null){
            System.out.println(linha);
            if(linha.equals(pesquisa)){
                retorno = true;
                break;
            }
        }
        br.close();
        return retorno;
    }
    
    public static void main(String args[]){
        try{
            if(pesquisar("arquivo.txt","Teste de gravação")){
                System.out.println("Encontrou!");
            }else{
                System.out.println("Não encontrou!");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}