Script started on Wed 14 Mar 2018 10:52:19 AM EDT
bda5@dijkstra:~/214/labs/06$ cat averag          gnatmake average.adb
gcc-5 -c average.adb
gnatbind-5 -x average.ali
gnatlink-5 average.ali
bda5@dijkstra:~/214/labs/06$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
bda5@dijkstra:~/214/labs/06$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date:3/14/18
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

-- Declare Vector type
   type Vector is array(Integer range <>) of Float;
-- Define array0 as an array containing no values
   Array0: Vector := (0.0,0.0);
-- Define array1 as an array containing 9, 8, 7, 6
   Array1: Vector := (9.0,8.0,7.0,6.0);
----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

   function Sum(A: in Vector) return Float is
      Sum: Float := 0.0;
   begin
      for I in A'Range
      loop
	 Sum := Sum + A(I);
      end loop;
      return Sum; 
   end Sum;

   function Average(A: in Vector) return Float is
   begin
      return Sum(A)/Float(A'Length);
   end Average;
  
begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

bda5@dijkstra:~/214/labs/06$ exit

Script done on Wed 14 Mar 2018 10:52:44 AM EDT
