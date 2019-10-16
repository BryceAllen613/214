Script started on Wed 31 Jan 2018 10:44:14 AM EST
bda5@vonneumann:~/214/labs/01$ [Kbda5@vonneumann:~/214/labs/01$ cat circle_area.java
cat: circle_area.java: No such file or directory
bda5@vonneumann:~/214/labs/01$ cat CircleArea.java
/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by:Bryce Allen
 * Date:1/31/18
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea {

     /* function circleArea() computes a circle's area, given its radius.
      * Parameter: r, a double
      * Precondition: r is not negative.
      * Returns: the area of the circle
      */
     public static double circleArea(double r) {
        return Math.PI * r * r;               // return an expression
     } // circleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("To compute the area of a circle,");
      System.out.print(" enter its radius: ");
     
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 
  
      //Get the number from the user
      double radius = keyboard.nextDouble();
      
      // output area
      System.out.println("The area is " + circleArea(radius)); 
  } // main method
} // class CircleArea
bda5@vonneumann:~/214/labs/01$ jaca  vac -p deprecation c CircleArea.hj  hava    java
bda5@vonneumann:~/214/labs/01$ java CircleS Area
To compute the area of a circle,
 enter its radius: 1
The area is 3.141592653589793
bda5@vonneumann:~/214/labs/01$ java CircleArea
To compute the area of a circle,
 enter its radius: 2
The area is 12.566370614359172
bda5@vonneumann:~/214/labs/01$ jaca  va CircleArea
To compute the area of a circle,
 enter its radius: 2.5
The area is 19.634954084936208
bda5@vonneumann:~/214/labs/01$ jac va CircleArea
To compute the area of a circle,
 enter its radius: 4.909  9999
The area is 78.53950218079365
bda5@vonneumann:~/214/labs/01$ ecit   xit
exit

Script done on Wed 31 Jan 2018 10:46:42 AM EST
