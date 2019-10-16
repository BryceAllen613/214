Script started on Thu 05 Apr 2018 03:24:40 PM EDT
bda5@kay:~/214/projects/07$ cat NameTester.Ja  java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Bryce Allen
 * Date:4/4/18
 ************************************************************/
import java.util.Scanner;

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
      assert aName.lfmi().equals("Jones, John P");
      
      aName.read();
      aName.setFirst("John");
      aName.setMiddle("Paul");
      aName.setLast("Jones");
      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;
      System.out.println("All tests passed!");
  }
};

class Name
{
    private String firstName;
    private String middleName;
    private String lastName;

    public Name(String fn, String mn, String ln)
    {
	firstName = fn;
	middleName = mn;
	lastName = ln;
    }
    /*returns the first name of Name object
     *@return firstName
     */
    
    public String getFirst(){ return firstName; }
    /*returns the middle name of Name object
     *@return middleName
     */
    
    public String getMiddle(){ return middleName; }
    /*returns the last name of Name object
     *@return lastName
     */
    
    public String getLast(){ return lastName; }
    /*returns the full name of Name object
     *@return firstName + middleName + lastName
     */
    
    public String toString(){ return firstName +
	    " " + middleName +
	    " " + lastName; }
    
    /*changes the first name of Name object
     *@param f the new name
     */
    public void setFirst(String f) { firstName = f; }
    
    /*changes the middle name of Name object
     *@param m the new name
     */
    public void setMiddle(String m) { middleName = m; }
    
    /*changes the last name of Name object
     *@param l the new name
     */
    public void setLast(String l) { lastName = l; }

    /*returns the name in last, first, middle initial format
     *@return the name in last, first, middle initial order
     */
    public String lfmi()
    {
	return lastName + ", " + firstName + " " + middleName.substring(0,1);
    }
    
    /*prompts the user to change all three names of this Name object
     */
    public void read()
    {
	Scanner keyboard = new Scanner(System.in);
	System.out.println("Enter new first middle and last names:");
	firstName = keyboard.next();
	middleName = keyboard.next();
	lastName = keyboard.next();
    }
			
};
bda5@kay:~/214/projects/07$ the==     make java
javac -deprecation NameTester.java
bda5@kay:~/214/projects/07$ java NameTester
John Paul Jones
Enter new first middle and last names:
bryce     Bryce
David
Allen
All tests passed!
bda5@kay:~/214/projects/07$ exit

Script done on Thu 05 Apr 2018 03:25:32 PM EDT
