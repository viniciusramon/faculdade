
public class imprimeNome {

	    public static void main(String[] args) {
	        
	        String Nome = "Leandro";
	        int i;
	        
	        // For
	        System.out.println("\nUtilizando for:");
	        for(i = 0; i < 5; i++)
	            System.out.println(i + " - " + Nome);
	            
	        
	        // While
	        System.out.println("\nUtilizando while:");
	        i=0;
	        while(i < 5){
	        	System.out.println(i + " - " + Nome);
	            i++;
	        }
	        
	        // Do
	        System.out.println("\nUtilizando do:");
	        i = 0;
	        do{
	        	System.out.println(i + " - " + Nome);
	            i++;
	        }while(i < 5);
	    }
	    
	

	
}
