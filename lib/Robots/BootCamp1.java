import java.util.Scanner;

class BootCamp1
{	
	public static void main(String[] args) throws Exception
    {				
    	System.out.println("Sup");
    	Scanner input = new Scanner(System.in);
    	while(1==1)
    	{
    		if(System.in.available() > 0)
    		{
    			System.out.println(input.nextLine());
    		}
    		Thread.sleep(100);
    	}
    }
}
