Script started on Tue 27 Mar 2018 04:32:17 PM EDT
bda5@knuth:~/214/projects/06$ script script.Java[21@javac -deprecation ArrayProcessing.java[19P ArrayProcessingc -deprecation ArrayProcessing.java[19P ArrayProcessingc -deprecation ArrayProcessing.javabda5@knuth:~/214/projects/06$ [21Pscript script.Java[Kscript script.Java[Kgnatmake arrayprocessing.adb
gcc-5 -c arrayprocessing.adb
gnatbind-5 -x arrayprocessing.ali
gnatlink-5 arrayprocessing.ali
bda5@knuth:~/214/projects/06$ ./arrayprocessing
enter a size: 4
Enter values for the array: 1.0
2.0
3.0
4.0
values are:  1.00000E+00 2.00000E+00 3.00000E+00 4.00000E+00
bda5@knuth:~/214/projects/06$ cat arrayprocessing.adb
-- arrayprocessing.adb processes (reads and writes) values to an array.
-- By: Bryce Allen
-- cs 214
-- Calvin College
-- 3/27/18
-------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ArrayProcessing is
   
   type ArrayType is array(Integer range <>) of Float;
   type ArrayTypeAccess is access ArrayType;
   
   AnArray : ArrayTypeAccess;-- := (0.0,0.0);
   Size : Integer;
   
   procedure WriteValues is
   begin
      Put("Enter values for the array: ");
      for I in AnArray'Range
      loop
	 Get(AnArray(I));
      end loop;
   end WriteValues;
   
   procedure ReadValues is
   begin
      Put("values are: ");
      for I in AnArray'Range
      loop
	 Put(AnArray(I));
      end loop;
   end ReadValues;
   
begin
   Put("enter a size: ");
   Get(Size);
   AnArray := new ArrayType(1..Size);
   WriteValues;
   ReadValues;
end ArrayProcessing;
bda5@knuth:~/214/projects/06$ exit

Script done on Tue 27 Mar 2018 04:33:09 PM EDT
