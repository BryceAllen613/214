Script started on Tue 17 Apr 2018 02:17:09 PM EDT
bda5@wall:~/214/projects/09$ gnatmake search_tester.adb
gcc-5 -c search_tester.adb
gcc-5 -c list_package.adb
gnatbind-5 -x search_tester.ali
gnatlink-5 search_tester.ali
bda5@wall:~/214/projects/09$ ,.  ./search_tester
          0          4          2         -1
bda5@wall:~/214/projects/09$ cat search_tester.adb
-- search.rb searches for a integer in a list
-- cs 214
-- Project 9
-- Calvin College
-- By Bryce Allen
-- 4/16/18
------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
use Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 

procedure Search_Tester is
   
   List1, List2, List3, List4 : List;   
   
begin
  Init(List1);                -- initialize them 
  Init(List2); 
  Init(List3); 
  Init(List4);
  
  Append(99, List1);          -- 99, 88, 77, 66, 55 
  Append(88, List1);          -- max is first 
  Append(77, List1); 
  Append(66, List1); 
  Append(55, List1); 
 
  Append(55, List2);          -- 55, 66, 77, 88, 99 
  Append(66, List2);          -- max is last 
  Append(77, List2); 
  Append(88, List2); 
  Append(99, List2); 
 
  Append(55, List3);          -- 55, 77, 99, 88, 66 
  Append(77, List3);          -- max is in the middle 
  Append(99, List3); 
  Append(88, List3); 
  Append(66, List3); 
  
  Append(55, List4);          -- 55, 77, 88, 66 
  Append(77, List4);          -- max is in the middle  
  Append(88, List4); 
  Append(66, List4); 
  
  Put(Search(List1, 99));
  Put(Search(List2, 99));
  Put(Search(List3, 99));
  Put(Search(List4, 99));
  
end Search_Tester;
bda5@wall:~/214/projects/09$ cat search_t        list_package.ads
-- list_package.ads declares an Ada linked list and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/13/18
------------------------------------------------------------------

package List_Package is

  -- the list-type itself (public)
  type List is private;

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List: out List);


  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List: in List) return Boolean;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer;


  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List: in out List);


  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List);

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------
  function Max(A_List : in List) return Integer;
  
 -- searcher for a value in a given list
 -- @param aList, and aValue; the list and value to be found
 -- @return the position of the value in the list
  function Search(AList : in List; AValue : in Integer) return Integer;
  
 private
    type List_Node;

    type Node_Ptr is access List_Node;
    
    type List_Node is
       record
        Its_Value : Integer;
        Its_Next : Node_Ptr;
       end record;    
   
    type List is
       record
	  Its_First : Node_Ptr;
	  Its_Last : Node_Ptr;
	  Its_Length : Integer;
       end record;    
end List_Package;

bda5@wall:~/214/projects/09$ cat list- _package.adb
-- list_package.adb defines Ada linked list operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/13/18
-------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List : out List) is
  begin
    A_List.Its_First := null;
    A_List.Its_Last := null;
    A_List.Its_Length := 0;
  end Init;

  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List : in List) return Boolean is
  begin
    return A_List.Its_Length = 0;
  end Empty;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer is
  begin
    return A_List.Its_Length;
  end Length;

  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List : in out List) is
    Temp_Ptr : constant Node_Ptr := new List_Node;
  begin
    Temp_Ptr.Its_Value := A_Value;
    Temp_Ptr.Its_Next := null;

    if A_List.Its_Length = 0 then
       A_List.Its_First := Temp_Ptr;
    else
       A_List.Its_Last.Its_Next := Temp_Ptr;
    end if;

    A_List.Its_Last := Temp_Ptr;

    A_List.Its_Length := A_List.Its_Length + 1;
  end Append;

  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List) is
     Temp_Ptr : Node_Ptr := A_List.Its_First;
  begin
     while Temp_Ptr /= null
     loop
	Put(' '); Put(Temp_Ptr.Its_Value);
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
  end Put;

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------

  function Max(A_List : in List) return Integer is
     Temp_Ptr : Node_Ptr := A_List.Its_First;
     Max_Value : Integer := -99999;
  begin 
     while Temp_Ptr /= null
     loop
	if Temp_Ptr.Its_Value > Max_Value then
	   Max_Value := Temp_Ptr.Its_Value;
	end if;
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
     return Max_Value;
  end Max;
  
  function Search(AList : in List; AValue : in Integer) return Integer is
      Pos : Integer := -1;
      T : Integer := -1;
      Temp_Ptr : Node_Ptr := AList.Its_First;
   begin
      while Temp_Ptr /= null
      loop
	 T := T + 1;
	 if Temp_Ptr.Its_Value = AValue
	 then
	  Pos := T;
	 end if;
	 Temp_Ptr := Temp_Ptr.Its_Next;
      end loop;
      return Pos;
   end Search;
end List_Package;

bda5@wall:~/214/projects/09$ exit

Script done on Tue 17 Apr 2018 02:18:02 PM EDT
