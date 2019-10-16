/*ComputeFactorial.java
 *Computes factorial with user friendly implementation
 *By: Bryce Allen
 *cs 214
 *Calvin College
 *2/23/18
 */
import java.util.Scanner;

public class ComputeFactorial
{
    public static void main(String[] args)
    {
	Scanner keyboard = new Scanner(System.in);
	System.out.println("Enter a value: ");
	int number = keyboard.nextInt();
	double factorial = factorial(number);
	System.out.println("The factorial of " + number + " is " + factorial);
    }

    /*written by: Bryce Allen.
     *@param: n representing the integer to be factoralized.
     *@return: the factorialized answer.
     */
    public static double factorial(int n)
    {
	double answer = 1.0;
	for(int i = 2; i <= n; i++)
        {  answer *= i; }
	return answer;
    }
}
