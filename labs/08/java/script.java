Script started on Fri 06 Apr 2018 09:55:40 AM EDT
bda5@vonneumann:~/214/labs/08/java$ cat NameTester.javb a
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Bryce Allen
 * Date:4/5/18
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}



bda5@vonneumann:~/214/labs/08/java$ cat Name.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Bryce Allen
 * Date:4/5/18
 ************************************************************/

// the Name class appears outside of the rest of the program
class Name {

  // Name object constructor with initialization  
  public Name(final String first, final String middle, final String last) {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
  }
 
  // extractor for first name of a Name object
  public final String getFirst() {
      return myFirst;
  }

  // extractor for middle name of a Name object
  public final String getMiddle() {
      return myMiddle;
  }

  // extractor for last name of a Name object
  public final String getLast() {
      return myLast;
  }
  
  // return string created by piecing together first, middle, and last names
  public final String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  private String myFirst, myMiddle, myLast;  // private instance variables
}
bda5@vonneumann:~/214/labs/08/java$ javac -deprecation NameTester.java
bda5@vonneumann:~/214/labs/08/java$ java NameTester
John Paul Jones
All tests passed!
bda5@vonneumann:~/214/labs/08/java$ exit

Script done on Fri 06 Apr 2018 09:56:15 AM EDT
