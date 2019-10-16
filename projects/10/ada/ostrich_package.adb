-- ostrich_package.adb gives Ostrich-related declarations,
--  and derives Ostrich from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is
   
   function Call(An_Ostrich : in Ostrich_Type) return String is
   begin
      return "Sqwauk";
   end Call;
   
   function Type_Name(An_Ostrich : in Ostrich_Type) return String is
   begin 
      return "Ostrich";
   end Type_Name;
   
   function Move(An_Ostrich : in Ostrich_Type) return String is
   begin 
      return "ran";
   end Move;
   
end Ostrich_Package;

