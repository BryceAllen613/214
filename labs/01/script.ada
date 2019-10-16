Script started on Wed 31 Jan 2018 10:51:24 AM EST
bda5@vonneumann:~/214/labs/01$ cat circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 1/31/18
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927;
   begin
      return PI * r ** 2;
   end circleArea;

begin                           
   Put_Line("To compute the area of a circle,");
   Put("enter its radius: ");
   Get(radius);

   area := circleArea(radius);

   Put("The circle's area is ");
   Put(area);
   New_Line;
end circle_area;
bda5@vonneumann:~/214/labs/01$ gnatmake circle_area
gnatmake: "circle_area" up to date.
bda5@vonneumann:~/214/labs/01$ ./circle_area
To compute the area of a circle,
enter its radius: 1
The circle's area is  3.14159E+00
bda5@vonneumann:~/214/labs/01$ ./circle_area
To compute the area of a circle,
enter its radius: 2
The circle's area is  1.25664E+01
bda5@vonneumann:~/214/labs/01$ / ./circle_area
To compute the area of a circle,
enter its radius: 2.5
The circle's area is  1.96350E+01
bda5@vonneumann:~/214/labs/01$ ./circle_area
To compute the area of a circle,
enter its radius: 4.99999
The circle's area is  7.85395E+01
bda5@vonneumann:~/214/labs/01$ exit

Script done on Wed 31 Jan 2018 10:53:58 AM EST
