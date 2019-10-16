Script started on Tue 17 Apr 2018 02:16:22 PM EDT
bda5@wall:~/214/projects/09$ javac -dp eprecation s Search.java
bda5@wall:~/214/projects/09$ java Search
0
4
2
-1
bda5@wall:~/214/projects/09$ cat Search.java
/* Search.java a program for searching for a specific item in a list
 * project 09 for cs 214 at Calvin College
 * 4/16/18
 * by: Bryce Allen
 */
import java.util.LinkedList;
import java.util.Collections;
import java.util.Iterator;

public class Search
{
    public static void main(String[] args)
    {
	LinkedList<Integer> list1 = new LinkedList<Integer>(),
	    list2 = new LinkedList<Integer>(),
	    list3 = new LinkedList<Integer>(),
	    list4 = new LinkedList<Integer>();

	list1.add(99);    // 99, 88, 77, 66, 55
	list1.add(88);    // index: 0
	list1.add(77);
	list1.add(66);  
	list1.add(55);
      
	list2.add(55);    // 55, 66, 77, 88, 99
	list2.add(66);    // index: 4
	list2.add(77);  
	list2.add(88);  
	list2.add(99);  
      
	list3.add(55);    // 55, 77, 99, 88, 66
	list3.add(77);    // index: 2
	list3.add(99);  
	list3.add(88);  
	list3.add(66);

	list4.add(66);    // 66, 77, 88, 101
	list4.add(77);    // index: -1
	list4.add(88);
	list4.add(101);

	System.out.println(find(list1, 99));
	System.out.println(find(list2, 99));
	System.out.println(find(list3, 99));
	System.out.println(find(list4, 99));
    }
    
    /* searcher for a value in a given list
     * @param aList, and aValue; the list and value to be found
     * @return the position of the value in the list
     */
    public static int find(LinkedList<Integer> aList, Integer aValue)
    {
	Iterator<Integer> listIterator = aList.iterator();
	int pos = -1;
        while (listIterator.hasNext()){
	    pos += 1;
	    if(listIterator.next() == aValue)
		{ return pos; }
	}
	return -1;
    }
}
bda5@wall:~/214/projects/09$ exit

Script done on Tue 17 Apr 2018 02:16:49 PM EDT
