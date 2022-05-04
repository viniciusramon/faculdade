import java.io.*;

public class Agenda{
    public static void salvar(String arquivo, String conteudo, boolean adicionar) throws IOException{
        FileWriter fw = new FileWriter(arquivo, adicionar);
        fw.write(conteudo);
        fw.close();
    }
    
    public static String carregar(String arquivo) throws FileNotFoundException, IOException{
        File file = new File(arquivo);
        if(!file.exists()) return null;
        BufferedReader br = new BufferedReader(new FileReader(arquivo));
        String saida = "";
        String linha;
        while((linha=br.readLine()) != null){
            saida += linha + "\n";
        }
        br.close();
        return saida;        
    }

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
            String texto = "\nNome: Miguel\nTel: 19 99307-1046";
            salvar("agenda.txt",texto,true);
            texto = carregar("agenda.txt");
            System.out.println(texto);
            
            if(pesquisar("agenda.txt","Nome: Miguel")){
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