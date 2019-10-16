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
		       
