-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 3/28/18
----------------------------------------------

--with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is 
     record
	MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
     end record;

  aName : Name ;

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

   procedure Init (TheName : out Name; First, Middle, Last : in String) is
begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

function GetFirst (TheName : in Name) return String is
begin
   return TheName.MyFirst;
end GetFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------
function GetMiddle (TheName : in Name) return String is
begin
   return TheName.MyMiddle;
end GetMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
function GetLast (TheName : in Name) return String is
begin
   return TheName.MyLast;
end GetLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

function GetFullName(TheName : in Name) return String is
begin
   return TheName.MyFirst & TheName.MyMiddle & TheName.MyLast;
end GetFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

procedure Put(TheName : in Name) is
begin
   Put(GetFullName(TheName));
end Put;

procedure SetFirst(TheName : out Name; F : in String) is
begin
   TheName.MyFirst := F;
end SetFirst;

procedure SetMiddle(TheName : out Name; M : in String) is
begin
   TheName.MyMiddle := M;
end SetMiddle;

procedure Setlast(TheName : out Name; L : in String) is
begin
   TheName.MyLast := L;
end SetLast;

function Lfmi(TheName : in Name) return String is
   F : String := TheName.MyMiddle(1.. 1);
begin
   return TheName.MyLast & TheName.MyFirst & F;
end Lfmi;

procedure Read(TheName : out Name) is
   F, M, L : String(1.. NAME_SIZE);
begin
   Put("Enter new first middle and last names: ");
   Get(F);
   TheName.MyFirst := F;
   Get(M);
   TheName.MyMiddle := M;
   Get(L);
   TheName.MyLast := L;
   return;
end Read;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( GetFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( GetMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( GetLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( GetFullName(aName) = "John    Paul    Jones   ", 
		  "getFullName() failed");
   pragma Assert( Lfmi(AName) = "Jones   John    P", "Lfmi() failed");
   Read(aName);
   pragma Assert( GetFirst(aName) /= "John    ", "getFirst() failed");
   pragma Assert( GetMiddle(aName) /= "Paul    ", "getMiddle() failed");
   pragma Assert( GetLast(aName) /= "Jones   ", "getLast() failed");
   pragma Assert( GetFullName(aName) /= "John    Paul    Jones   ", 
		  "getFullName() failed");
   SetFirst(aName, "John    ");
   SetMiddle(aName, "Paul    ");
   SetLast(aName, "Jones   ");
   pragma Assert( GetFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( GetMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( GetLast(aName) = "Jones   ", "getLast() failed");
   
   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

