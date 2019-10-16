/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Bryce Allen
 * Date:3/28/18
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");
//
      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

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
};
