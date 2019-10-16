-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- completed by: Bryce Allen
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;
   
   function yearCode(Y: in String) return integer is
   begin
      if Y = "freshman " then
	 return 1;
      elsif( Y = "sophomore" )then
	 return 2;
      elsif( Y = "junior   " )then
	 return 3;
      elsif( Y = "senior   " )then
	 return 4;
      else 
	 return 0;
      end if;
   end yearCode;
     
   
begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

