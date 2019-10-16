Script started on Mon 23 Apr 2018 04:02:24 PM EDT
bda5@sutherland:~/214/projects/10/java$ cat Birds .java Duck.java Goose.java K Kiwi. java Ostrich.java ow  Owl.java Penguin.java Birds.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/20/18
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
    public Bird()
    {
	myName = "";
    }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Bird(String name)
    {
	myName = name;
    }

 /* Name accessor
  * Return: myName.
  */
    public String getName() { return myName; }

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
    public String call() { return "Squawk!"; }

    public String move() { return "flew"; }
    
 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
    public void print()
    {
	System.out.println( getName() + ' ' + getClass().getName()
			    + " " + move() + " and " + " says " + call() );
    }


  private String myName;
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/20/18
 ******************************************************/

public class Duck extends Bird{
    
    public Duck()
    {
	super();
    }
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Duck(String name)
    {
        super(name);
    }


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
    public String call() { return "Quack!"; }

}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/20/18
 ******************************************************/

public class Goose extends Bird{

    public Goose()
    {
	super();
    }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Goose(String name)
    {
	super(name);
    }


 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
    public String call() { return "Honk!"; }

} 

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
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/20/18
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Penguin bird5 = new Penguin("Emperor");
      bird5.print();

      Ostrich bird6 = new Ostrich("Oliver");
      bird6.print();

      Kiwi bird7 = new Kiwi("Kevin");
      bird7.print();
      System.out.println();
    }
}

bda5@sutherland:~/214/projects/10/java$ javac -deprecation birds.java            Birds.java
bda5@sutherland:~/214/projects/10/java$ java bird    Birds

Welcome to the Bird Park!

Hawkeye Bird flew and  says Squawk!
Donald Duck flew and  says Quack!
Mother Goose Goose flew and  says Honk!
Woodsey Owl flew and  says Woo-hoo!
Emperor Penguin Waddled and  says Noot!
Oliver Ostrich ran and  says Gwawk!
Kevin Kiwi Walked and  says Chirp!

bda5@sutherland:~/214/projects/10/java$ exit

Script done on Mon 23 Apr 2018 04:05:49 PM EDT
