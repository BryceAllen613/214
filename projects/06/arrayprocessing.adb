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
