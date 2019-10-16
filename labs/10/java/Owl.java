/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/20/18
 ******************************************************/

public class Owl extends Bird{

    public Owl()
    {
	super();
    }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Owl(String name)
    {
	super(name);
    }


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
    public String call() { return "Woo-hoo!"; }
} 

