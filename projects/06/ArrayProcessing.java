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
