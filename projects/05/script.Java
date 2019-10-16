Script started on Fri 02 Mar 2018 10:23:30 AM EST
bda5@hollerith:~/214/projects/05$ sc  cat Quadtr  raticFormula.jaca  va
/* QuadraticFormula computes the roots of a quadratic expression
 * cs 214 Calvin College
 * Completed by: Bryce Allen
 * 3/2/18
 *
 */
import java.util.Scanner;

public class QuadraticFormula
{
    private static double root1;
    private static double root2;
    
    public static void main(String[] args)
    {
	Scanner keyboard = new Scanner(System.in);
	
	System.out.println("Enter the A B and C values");
	double a = keyboard.nextDouble();
	double b = keyboard.nextDouble();
	double c = keyboard.nextDouble();

        root1 = 0.0;
        root2 = 0.0;

	if( quadraticFormula(a,b,c) )
	    {
		System.out.println("Root one " + root1);
		System.out.println("Root two " + root2);
	    }
	else{ System.out.println("Not valid input"); }
    }

    public static boolean quadraticFormula(double a, double b, double c)
    {
	if( a == 0 )
	    return false;
	
	double test = (Math.pow(b, 2.0)-(4*a*c));
	if( test < 0 )
	    return false;

	root1 = ((-b + (Math.sqrt(test)))/(2*a));
	root2 = ((-b - (Math.sqrt(test)))/(2*a));

	return true;
    }
}
		       
bda5@hollerith:~/214/projects/05$ javac -deprecation Quadrac ticFormula.java
bda5@hollerith:~/214/projects/05$ Quad    J java QuadraticForu mula. 
Enter the A B and C values
1
1
0
Root one 0.0
Root two -1.0
bda5@hollerith:~/214/projects/05$ exit

Script done on Fri 02 Mar 2018 10:24:34 AM EST
