Script started on Fri 20 Apr 2018 10:19:53 AM EDT
bda5@codd:~/214/labs/10/java$ cat Birds.java      .java
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

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
    public void print()
    {
	System.out.println( getName() + ' ' + getClass().getName()
			    + " says " + call() );
    }


  private String myName;
}

bda5@codd:~/214/labs/10/java$ cat Duck.java
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

bda5@codd:~/214/labs/10/java$ cat Goose.jvca   ava
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

bda5@codd:~/214/labs/10/java$ cat Owl.java
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

bda5@codd:~/214/labs/10/java$ cat Birds.java
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
      System.out.println();
    }
}

bda5@codd:~/214/labs/10/java$ javac -deprecation Birds.java
bda5@codd:~/214/labs/10/java$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Woo-hoo!

bda5@codd:~/214/labs/10/java$ exit

Script done on Fri 20 Apr 2018 10:21:22 AM EDT
