-- penguin_package.ads gives Penguin-related declarations,
--  and derives Penguin from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Penguin_Package is
   type Penguin_Type is new Bird_Type with private;
   
   function Call(A_Penguin : in Penguin_Type) return String;
   
   function Type_Name(A_Penguin : in Penguin_Type) return String;
   
   function Move(A_Penguin : in Penguin_Type) return String;
   
private
   type Penguin_Type is new Bird_Type with
      record
	 null;
      end record;
end Penguin_Package;

