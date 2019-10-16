Script started on Thu 22 Feb 2018 08:58:10 PM EST
cbda5@taylor:~/214/labs/04$ c cat LogTable.jacva  a  ca  ba  c va
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by:Bryce Allen
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{
  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

    double logarithm = 0.0;
    double count = start;
    while(count <= stop){
	logarithm = Math.log10(count);
	System.out.println("The Logarithm of " + count + " is " + logarithm);
	count += increment;
    }
  }
}

bda5@taylor:~/214/labs/04$ javac -deprecation LogTable.java
bda5@taylor:~/214/labs/04$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
.5
The Logarithm of 1.0 is 0.0
The Logarithm of 1.5 is 0.17609125905568124
The Logarithm of 2.0 is 0.3010299956639812
The Logarithm of 2.5 is 0.3979400086720376
The Logarithm of 3.0 is 0.47712125471966244
The Logarithm of 3.5 is 0.5440680443502757
The Logarithm of 4.0 is 0.6020599913279624
The Logarithm of 4.5 is 0.6532125137753437
The Logarithm of 5.0 is 0.6989700043360189
The Logarithm of 5.5 is 0.7403626894942439
The Logarithm of 6.0 is 0.7781512503836436
The Logarithm of 6.5 is 0.8129133566428556
The Logarithm of 7.0 is 0.8450980400142568
The Logarithm of 7.5 is 0.8750612633917001
The Logarithm of 8.0 is 0.9030899869919435
The Logarithm of 8.5 is 0.9294189257142927
The Logarithm of 9.0 is 0.9542425094393249
The Logarithm of 9.5 is 0.9777236052888477
The Logarithm of 10.0 is 1.0
bda5@taylor:~/214/labs/04$ cat log       exit

Script done on Thu 22 Feb 2018 08:59:05 PM EST
