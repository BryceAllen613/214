Script started on Wed 28 Feb 2018 10:28:58 AM EST
bda5@wirth:~/214/labs/05$ javac -deprecation javc    script.javacrip[1P[1P[1P[1P[1@sp[1@l[1@i[1P[1@Split.java
bda5@wirth:~/214/labs/05$ jaca Split
bash: jaca: command not found
bda5@wirth:~/214/labs/05$ jac ca  va Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
bda5@wirth:~/214/labs/05$ cat Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Bryce Allen
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
    public static void splitter(String theString, int pos, String[] resList)
    {
	resList[0] = theString.substring(0,pos);
	resList[1] = theString.substring(pos,theString.length());
    }
}
bda5@wirth:~/214/labs/05$ exit

Script done on Wed 28 Feb 2018 10:29:48 AM EST
