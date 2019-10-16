Script started on Thu 12 Apr 2018 06:53:13 PM EDT
bda5@augusta:~/214/labs/09/java$ cat Max.java
/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Bryce Allen
 * Date: 4/12/18
 */

import java.util.LinkedList;
import java.util.Collections;
import java.util.Iterator;

public class Max {

  public static void main(String [] args) {
    // define list1, list2, list3 here ...
    LinkedList<Integer> list1 = new LinkedList<Integer>(),
	  list2 = new LinkedList<Integer>(),
	  list3 = new LinkedList<Integer>();  
      
    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);
      
    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
      
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); 
    print(list2); 
    print(list3);

    System.out.println("Max of list1: " + Collections.max(list1));
    System.out.println("Max of list2: " + Collections.max(list2));
    System.out.println("Max of list3: " + Collections.max(list3));
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
    public static void print(LinkedList<Integer> aList)
    {
	Iterator<Integer> listIterator = aList.iterator();
	while (listIterator.hasNext()){
	    System.out.println(listIterator.next() + " ");
	}
	System.out.print("/n");
    }
}

bda5@augusta:~/214/labs/09/java$ cat Max.javaruby temperatureTester.rb[13Pcat Max.java[Kmake Max.java
make: Nothing to be done for 'Max.java'.
bda5@augusta:~/214/labs/09/java$ java Max
99 
88 
77 
66 
55 
/n55 
66 
77 
88 
99 
/n55 
77 
99 
88 
66 
/nMax of list1: 99
Max of list2: 99
Max of list3: 99
bda5@augusta:~/214/labs/09/java$ exit

Script done on Thu 12 Apr 2018 06:53:37 PM EDT
