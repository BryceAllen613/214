-- penguin_package.adb gives Penguin-related definitions,
--  and derives Penguin from Bird.
--
-- Completed by: Bryce Allen
-- Date: 4/23/18
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is
   
   function Call(A_Penguin : in Penguin_Type) return String is
   begin
      return "Noot!";
   end Call;
   
   function Type_Name(A_Penguin : in Penguin_Type) return String is
   begin
      return "Penguin";
   end Type_Name;
   
   function Move(A_Penguin : in Penguin_Type) return String is
   begin 
      return "waddled";
   end Move;
   
end Penguin_Package;
