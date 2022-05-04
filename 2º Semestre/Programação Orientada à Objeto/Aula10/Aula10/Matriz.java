import java.util.Scanner;

class Matriz
{
    public static void main (String args[])
    {
        Scanner keyboard = new Scanner(System.in);
        int[][] m = new int[3][3];
        for(int i=0;i<3;i++)
        {
            for(int j=0;j<3;j++)
            {
                System.out.println("Digite o valor para ("+ i+ ","+ j +") : ");
                m[i][j] = keyboard.nextInt();
            }
        }
        
        System.out.println("Matriz digitada: ");
        for(int i=0;i<3;i++)
        {
            for(int j=0;j<3;j++)
            {
                System.out.print(m[i][j] + " ");
            }
            
            System.out.println();
        }
    }
}