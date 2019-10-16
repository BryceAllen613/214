-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date:4/5/18
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
package body Name_Package is
  procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
  begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
  end Init;

  function getFirst( Nm: in Name) return String is
  begin
    return Nm.MyFirst;
  end getFirst;
  
  function getMiddle( Nm: in Name) return String is
  begin
     return Nm.MyMiddle;
  end getMiddle;
  
  function getLast( Nm: in Name) return String is
  begin
     return Nm.MyLast;
  end getLast;
  
  function getFullName( Nm: in Name) return String is
  begin
    return Nm.MyFirst & " "
           & Nm.MyMiddle & " "
           & Nm.MyLast;
  end getFullName;
  
  procedure Put(Nm: in Name) is
  begin
    Put( getFullName(Nm) );
  end Put;
end Name_Package;
