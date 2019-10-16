/* Kiwi.java makes an instance of a Kiwi, inherited from bird
 * cs 214 project 10
 * Bryce Allen
 * 4/21/18
 */

public class Kiwi extends Bird {
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */ 
    public Kiwi(String name) { super(name); }

    /* a Kiwi's call
     * return a kiwi call "Chirp!"
     */
    public String call() { return "Chirp!"; }

    public String move() { return "Walked"; }
}
