-- kiwi_package.adb gives kiwi-related declarations,
--  and derives kiwi from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package body Kiwi_Package is
   
   function Call(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Chirp!";
   end Call;
      
   function Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Kiwi! ";
   end Type_Name;
   
   function Move(A_Kiwi : in Kiwi_Type) return String is
   begin 
      return "walked";
   end Move;
   
end Kiwi_Package;
