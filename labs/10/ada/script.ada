Script started on Fri 20 Apr 2018 04:33:00 PM EDT
bda5@aiken:~/214/labs/10/ada$ ls
bird_package.adb   birds.adb~	      duck_package.o	  owl_package.adb
bird_package.adb~  birds.ali	      goose_package.adb   owl_package.adb~
bird_package.ads   birds.o	      goose_package.adb~  owl_package.ads
bird_package.ads~  duck_package.adb   goose_package.ads   owl_package.ads~
bird_package.ali   duck_package.adb~  goose_package.ads~  owl_package.ali
bird_package.o	   duck_package.ads   goose_package.ali   owl_package.o
birds		   duck_package.ads~  goose_package.o	  script.ada
birds.adb	   duck_package.ali   Makefile
bda5@aiken:~/214/labs/10/ada$ cat bird_package.ads
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
bda5@aiken:~/214/labs/10/ada$ cat   cat bird_package.ads b
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
      Put(Call(A_Bird));
      Put(" says ");
      Put(Call(A_Bird));
   end Put;
   
end Bird_Package;

bda5@aiken:~/214/labs/10/ada$ cat   cat bird_package.adb sd[1P[1P[1P[1P[1@D[1@u[1@c[1@k[1P[1P[1P[1P[1@d[1@u[1@c[1@k
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
bda5@aiken:~/214/labs/10/ada$ cat duck_package.ads b
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
bda5@aiken:~/214/labs/10/ada$ cat duck_package.adb[1P[1P[1P[1P[1@g[1@o[1@o[1@s[1@e_package.adb s
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
bda5@aiken:~/214/labs/10/ada$ cat goose_package.ads d b
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
bda5@aiken:~/214/labs/10/ada$ cat   cat owl_package.ads
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
bda5@aiken:~/214/labs/10/ada$ cat owl_package.ads b
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
bda5@aiken:~/214/labs/10/ada$ bird    cat virds.ad        birds.adb
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
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Ada.Text_IO;


procedure Birds is

   Bird1 : Bird_Type;       -- base class
   Bird2 : Duck_Type;       -- derived class 1
   Bird3 : Goose_Type;      -- derived class 2
   Bird4 : Owl_Type;        -- derived class 3

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

   New_Line;
end Birds;

bda5@aiken:~/214/labs/10/ada$ gnatmake birds.adb
gnatmake: "birds" up to date.
bda5@aiken:~/214/labs/10/ada$ ./birds
\nWelcome to the Bird Park!\nTweety Bird Squawk! says Squawk!
Donald Duck Quack! says Quack!
Mother Goose Honk! says Honk!
Woodsy Owl Whoo! says Whoo!

bda5@aiken:~/214/labs/10/ada$ exit

Script done on Fri 20 Apr 2018 04:35:05 PM EDT
