Script started on Mon 26 Mar 2018 09:34:31 PM EDT
^[[A^[[Abda5@kay:~/214/projects/06$ a2ps lab06-resultsls[K[16@a2ps lab06-results[Ka2ps lab06-results[Kjavac -deprecation ArrayProcessing.java
bda5@kay:~/214/projects/06$ java a ArrayProcessing.java     
Enter number of values for the array: 
5
Enter the values: 
1.0
2.0
3.0
4.0
5.0
 1.0  2.0  3.0  4.0  5.0 bda5@kay:~/214/projects/06$ cat ArrayProcessgin   ing.java
/* ArrayProcessing.java prints an array and fills an array from user input
 * by: Bryce Allen
 * cs 214 
 * Calvin College
 * 3/26/18
 */

import java.util.Scanner;


public class ArrayProcessing {
    public static void main(String[] args)
    {
	Scanner keyboard = new Scanner(System.in);
	System.out.println("Enter number of values for the array: ");
	int size = keyboard.nextInt();
	double[] list = new double[size];
	System.out.println("Enter the values: ");
	enterValues(list);//enter value subprogram
	printValues(list);//print value subprogram
    }

    public static void enterValues(double[] anArray)
    {
	Scanner scan = new Scanner(System.in);
	for(int i = 0; i < anArray.length; i++)
	    {
		anArray[i] = scan.nextDouble();
	    }
    }

    public static void printValues(double[] anArray)
    {
	for(int i = 0; i < anArray.length; i++)
	    {
		System.out.print(" " + anArray[i] + " ");
	    }
    }
}
bda5@kay:~/214/projects/06$ exit

Script done on Mon 26 Mar 2018 09:35:37 PM EDT
