-- letter_grade.adb computes letter grade when given percentage
-- input: integer representing the exact grade for a given student
-- precondition: 0<= input <=100
-- output: char representing the letter grade (A, B, C, D, F)
-- by:Bryce Allen
-- cs-214 Calvin College 2/16/18
-----------------------------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grade is
   Grade: Integer;
   LGrade: STRING(1.. 3);
   function letterGrade(G: in Integer) return STRING is
   begin
      case G is
	 when 100 => return " A ";
	 when 90 => return " A ";
	 when 80 => return " B ";
	 when 70 => return " C ";
	 when 60 => return " D ";
	 when others => return " F ";
      end case;
     
   end letterGrade;
     
begin
     Put_Line("Enter percentage grade: ");
     Get(Grade);
     -- Grade := 90;
     LGrade := LetterGrade(Grade);
     Put("Letter grade: ");
     Put(LGrade);
end letter_grade;
