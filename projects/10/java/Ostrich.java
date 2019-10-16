/* Ostrich.java makes an instance of a Ostrich, inherited from bird
 * cs 214 project 10
 * Bryce Allen
 * 4/21/18
 */

public class Ostrich extends Bird {
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */ 
    public Ostrich(String name)
    { super(name); }

  /* An ostrich call
   * Return: an ostrich's call
   */
    public String call() { return "Gwawk!"; }
    
    public String move() { return "ran"; }
}
