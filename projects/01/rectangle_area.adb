-- rectangle_area.adb computes area of rectangle
-- Bryce Allen

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   length, width, area : float; 

   -- function rectangleArea computes a circle's area, given its radius
   -- Parameter: l,w, floats
   -- Precondition: l/w >= 0.0
   -- Return: the area of the rectangle
   ----------------------------------------------------
   function RectangleArea(L,W: in float) return Float is
   begin
      return L*W;
   end rectangleArea;

begin                           
   Put_Line("To compute the area of a rectangle,");
   Put("enter its length: ");
   Get(length);
   
   Put("and its width: ");
   Get(Width);

   area := rectangleArea(Length,width);

   Put("The rectangle's area is ");
   Put(area);
   New_Line;
end rectangle_area;
