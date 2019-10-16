-- ostrich_package.ads gives Ostrich-related declarations,
--  and derives Ostrich from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Ostrich_Package is
   type Ostrich_Type is new Bird_Type with private;
   
   function Call(An_Ostrich : in Ostrich_Type) return String;
   
   function Type_Name(An_Ostrich : in Ostrich_Type) return String;
   
   function Move(An_Ostrich : in Ostrich_Type) return String;
   
private
   type Ostrich_Type is new Bird_Type with
      record 
	 null;
      end record;
end Ostrich_Package;

