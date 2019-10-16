-- kiwi_package.ads gives kiwi-related declarations,
--  and derives kiwi from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Kiwi_Package is
   type Kiwi_Type is new Bird_Type with private;
   
   function Call(A_Kiwi : in Kiwi_Type) return String;
   
   function Type_Name(A_Kiwi : in Kiwi_Type) return String;
   
   function Move(A_Kiwi : in Kiwi_Type) return String;
   
private 
   type Kiwi_Type is new Bird_Type with
      record
	 null;
      end record;
end Kiwi_Package;
