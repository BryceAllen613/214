/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Bryce Allen
 * Date: 3/14/18
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
  public static void main(String[] args) {

      double[] array1 = {9.0, 8.0, 7.0, 6.0};
      double[] array0 = new double[0];

      // output the average of the values in the arrays
      System.out.println("The first average is " + avg(array0));
      System.out.println("The second average is " + avg(array1));
  }
  

  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/

    public static double sum(double[] anArray)
    {
	double total = 0.0;
	for(int i = 0; i<anArray.length; i++)
	    { total += anArray[i]; }
	return total;
    }
  

  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   **************************************************************/
  
    public static double avg(double[] theArray)
    {
	if(theArray == null || theArray.length <= 0)
	    return 0.0;
	else
	    return sum(theArray)/theArray.length;
    }

}

