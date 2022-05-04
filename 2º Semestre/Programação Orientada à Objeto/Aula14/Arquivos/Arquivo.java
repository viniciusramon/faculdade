import java.io.*;

public class Arquivo{
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
    
    public static void main(String args[]){
        try{
            String texto = "\nTeste de gravação\nUma linha\nOutra linha";
            salvar("arquivo.txt",texto,true);
            texto = carregar("arquivo.txt");
            System.out.println(texto);
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}