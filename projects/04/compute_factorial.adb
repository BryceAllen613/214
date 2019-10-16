
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
      
