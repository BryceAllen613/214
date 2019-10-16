/* Penguin.java makes an instance of a penquin, inherited from bird
 * cs 214 project 10
 * Bryce Allen
 * 4/21/18
 */

public class Penguin extends Bird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */ 
    public Penguin(String name)
    { super(name); }

 /* A Penguin's Call
  * Return: an Penguin-call ("Noot!").
  */
    public String call() { return "Noot!"; }

    public String move() { return "Waddled"; }
}
