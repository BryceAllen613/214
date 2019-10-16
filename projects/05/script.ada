Script started on Fri 02 Mar 2018 11:15:19 AM EST
bda5@hollerith:~/214/projects/05$ cat quadratic_formula.ada   adb
--quadratic_formula.ada computes the roots of a quadratic equation given the
--coefficents
--by: Bryce Allen
--cs 214 Calvin College
--3/2/18
---------------------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
procedure Quadratic_Formula is
   
   Root1, Root2, Aval, Bval, Cval, Test : Float;
   
   function quadraticFormula(A: in Float; B: in Float; C: in Float) return Boolean is
   begin
     Test := ((B ** 2) - (4.0 * A * C));
     if A = 0.0 then
       return False;
     elsif (Test < 0.0)then
       return False;
     else
	Root1 := ((-B + (Sqrt(Test)))/(2.0 * A));
	Root2 := ((-B - (Sqrt(Test)))/(2.0 * A));
	return True;
     end if;
   end quadraticFormula;

begin
   Put_Line("Enter a b and c values: ");
   Get(Aval);
   Get(Bval);
   Get(Cval);
   if QuadraticFormula(Aval, Bval, Cval) = True then
      Put("root one: ");
      Put(Root1);
      Put(" root two: ");
      Put(Root2);
   else
      Put("invalid input!");
   end if;
      
end Quadratic_Formula;
  
bda5@hollerith:~/214/projects/05$ cat quadratic             gnatmake quadratic_formm ula.adb
gcc-5 -c quadratic_formula.adb
gnatbind-5 -x quadratic_formula.ali
gnatlink-5 quadratic_formula.ali
bda5@hollerith:~/214/projects/05$ ./  gnatmake quadratic_formula.adb[1P[1P[1P[1P[1P[1P[1P[1P[1P[1@.[1@/
bash: ./quadratic_formula.adb: Permission denied
bda5@hollerith:~/214/projects/05$ ./quadratic_formula.adb    
Enter a b and c values: 
1
1
0
root one:  0.00000E+00 root two: -1.00000E+00
bda5@hollerith:~/214/projects/05$ exit

Script done on Fri 02 Mar 2018 11:16:53 AM EST
