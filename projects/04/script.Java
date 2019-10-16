Script started on Tue 27 Feb 2018 04:23:57 PM EST
bda5@church:~/214/projects/04$ javac -deprecation ComputeFactorial.java
bda5@church:~/214/projects/04$ l java ComputeFactorial
Enter a value: 
5
The factorial of 5 is 120.0
bda5@church:~/214/projects/04$ cat ComputeFactorial.java
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
bda5@church:~/214/projects/04$ exit

Script done on Tue 27 Feb 2018 04:24:38 PM EST
