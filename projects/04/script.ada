Script started on Tue 27 Feb 2018 04:24:49 PM EST
bda5@church:~/214/projects/04$ dnat    gnatmake script.adb          compute_factorial.adb
gnatmake: "compute_factorial" up to date.
bda5@church:~/214/projects/04$ ./ compute_factorial. [1P
Enter a number: 
5
        120
bda5@church:~/214/projects/04$ cat computeFa  _factorial.adb

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Compute_Factorial is
   
   F, A : Integer;
   
   function ComputeFactorial(N: in Integer) return Integer is
      Answer : Integer;
   begin
      Answer:= 1;
      for I in 2 .. N loop
	 Answer:= I * Answer;
      end loop;
	return Answer;
   end ComputeFactorial;
begin
     Put_Line("Enter a number: ");
     Get(F);
     A := ComputeFactorial(F);
     Put(A);
end Compute_Factorial;
      
bda5@church:~/214/projects/04$ exit

Script done on Tue 27 Feb 2018 04:25:50 PM EST
