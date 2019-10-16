Script started on Mon 23 Apr 2018 04:18:45 PM EDT
bda5@sutherland:~/214/projects/10/ada$  cat bird_package.ads bird_package.adv b du ck_package.ads duckpacka     _package.ads b goose_package.ads goose_packla  age.adb kiwi_package .ads kiwi_package.adb ostrich_package.ads ostrich_package.ads b owl_package.ads ow l_package.adb pengi uin_package.ads penguin  _package.adb birds.adb s birds.adb
-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

package Bird_Package is
   type Bird_Type is tagged private;

 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String);
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function  Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function  Call(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function  Type_Name(A_Bird : in Bird_Type) return String;
   
   function Move(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------   
   procedure Put(A_Bird : in Bird_Type'Class);

private
   type Bird_Type is 
      tagged record
	 My_Name : String(1.. 6);
      end record;
end Bird_Package;
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String) is
   begin
      A_Bird.My_Name := Name;
   end Init;
   
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function Name(A_Bird : in Bird_Type) return String is
   begin
      return A_Bird.My_Name;
   end Name;
   
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function Call(A_Bird : in Bird_Type) return String is
   begin
      return "Squawk!";
   end Call;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function Type_Name(A_Bird : in Bird_Type) return String is
   begin 
      return "Bird";
   end Type_Name;
   
   function Move(A_Bird : in Bird_Type) return String is
   begin
      return "Flew";
   end Move;
   
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   procedure Put(A_Bird : in Bird_Type'Class) is
   begin
      Put(Name(A_Bird));
      Put(' ');
      Put(Type_Name(A_Bird));
      Put(' ');
      Put(Move(A_Bird));
      Put(" and ");
      --Put(Call(A_Bird));
      Put(" says ");
      Put(Call(A_Bird));
   end Put;
   
end Bird_Package;

-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Duck_Package is
   type Duck_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Duck_Type) return String;
   
private
   type Duck_Type is new Bird_Type with
      record
	 null;
      end record;
end Duck_Package;
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Duck : in Duck_Type) return String is
   begin 
      return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Duck_Type) return String is
   begin
      return "Duck";
   end Type_Name;
end Duck_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Goose_Package is
   type Goose_Type is new Bird_Type with private;
   
 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
   function Call(A_Goose : in Goose_Type) return String;
 
 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
   function Type_Name(A_Goose : in Goose_Type) return String;
private
   type Goose_Type is new Bird_Type with
      record
	 null;
      end record;
end Goose_Package;
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Bryce Allen
-- Date: 4/20/18
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
   function Call(A_Goose : in Goose_Type) return String is
   begin
      return "Honk!";
   end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
   function Type_Name(A_Goose : in Goose_Type) return String is
   begin 
      return "Goose";
   end Type_Name;
end Goose_Package;
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

-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Owl_Package is
   type Owl_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   function Call(An_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   function Type_Name(An_Owl : in Owl_Type) return String;
private
   type Owl_Type is new Bird_Type with
      record
	 null;
      end record;
end Owl_Package;
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   function Call(An_Owl : in Owl_Type) return String is
   begin 
      return "Whoo!";
   end Call;
   
 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   function Type_Name(An_Owl : in Owl_Type) return String is
   begin
      return "Owl";
   end Type_Name;
end Owl_Package;
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
cat: birds.ads: No such file or directory
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Bryce Allen
-- Date: 4/20/18
-----------------------------------------------------

with Bird_Package, 
      Duck_Package, 
      Goose_Package, 
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
      Ada.Text_IO;

procedure Birds is

   Bird1 : Bird_Type;       -- base class
   Bird2 : Duck_Type;       -- derived class 1
   Bird3 : Goose_Type;      -- derived class 2
   Bird4 : Owl_Type;        -- derived class 3
   Bird5 : Penguin_Type;
   Bird6 : Ostrich_Type;
   Bird7 : Kiwi_Type;

begin
   Put("\nWelcome to the Bird Park!\n");
   Init(Bird1, "Tweety");
   Put(Bird1); New_Line;

   Init(Bird2, "Donald");
   Put(Bird2); New_Line;

   Init(Bird3, "Mother");
   Put(Bird3); New_Line;

   Init(Bird4, "Woodsy");
   Put(Bird4); New_Line;
   
   Init(Bird5, "Peter ");
   Put(Bird5); New_Line;
   
   Init(Bird6, "Oliver");
   Put(Bird6); New_Line;
   
   Init(Bird7, "Kevin ");
   Put(Bird7); New_Line;
   New_Line;
end Birds;

bda5@sutherland:~/214/projects/10/ada$ gnatmake birds.adb  
gnatmake: "birds" up to date.
bda5@sutherland:~/214/projects/10/ada$ ./birds
\nWelcome to the Bird Park!\nTweety Bird Flew and  says Squawk!
Donald Duck Flew and  says Quack!
Mother Goose Flew and  says Honk!
Woodsy Owl Flew and  says Whoo!
Peter  Penguin waddled and  says Noot!
Oliver Ostrich ran and  says Sqwauk
Kevin  Kiwi!  walked and  says Chirp!

bda5@sutherland:~/214/projects/10/ada$ exit

Script done on Mon 23 Apr 2018 04:22:15 PM EDT
