Script started on Thu 12 Apr 2018 06:08:37 PM EDT
bda5@augusta:~/214/projects/08/Ada$ cat temperature_package.ads
-- Temperature.ads represents aggregate type temperature
-- cs 214
-- Calvin College
-- Bryce Allen
-- 4/6/18

with Ada.Text_IO; use Ada.Text_IO;
package Temperature_Package is
   type Temperature is private;
   --initializes the temperature object
   -- T, D, S Temperature, Degrees, Scale respectively
   procedure Init(T : out Temperature; D : in Float; S : in String);
   
   --returns the degrees of this
   --T, temperature to get degrees from
   function GetDegrees(T : in Temperature) return Float;
   
   --returns the scale of this object
   --T, temperature to get Scale from
   function GetScale(T : in Temperature) return String;--(1.. 1);
   
   --sets degrees to celsius equivalence
   --T, input temperature
   procedure GetCelsius(T : out Temperature);-- return Float;
   
   --sets degrees to Kelvin equivalence 
   --T, input temperature
   procedure GetKelvin(T : out Temperature);-- return Float;
   
   --sets degrees to Fahrenheit equivalence
   --T, input temperature
   procedure GetFahrenheit(T : out Temperature);-- return Float;
   
   --sets temperature to new degrees and scale
   --T,D,S output temperature, new degrees, new scale respectively
   procedure InputTemp(T : out Temperature; D : in Float; S : in String);
   
   --outputs temperature as a string
   --T, input temperature
   procedure PrintTemp(T : in Temperature);-- return String;--(1.. 8);
   
   --raises temperature by d amount
   --T, D, ouput temperature and degree increase respectively
   procedure RaiseTemp(T : out Temperature; D : in Float);
   
   --lowers temperature by d amount
   --T, D, ouput temperature and degree decrease respectively
   procedure LowerTemp(T : out Temperature; D : in Float);
   
   --tests if two temperatures are equal
   --T, T2, the two temperatures to be compared
   --returns true if equal, false otherwise
   function Equals(T : in Temperature; T2 : in Temperature) return Boolean;
   
   --tests if two temperatures are less than eachother
   --T, T2, the two temperatures to be compared
   --returns true if T is less than T2, false otherwise
   function LessThan(T : in Temperature; T2 : in Temperature) return Boolean;
private
   type Temperature is
      record
	 Degrees : Float;
	 Scale : String(1.. 1);
      end record;
end Temperature_Package;
bda5@augusta:~/214/projects/08/Ada$ cat temperature_package.adss b
with Ada.Text_IO; use Ada.Text_IO;

package body Temperature_Package is
   
   procedure Init(T : out Temperature; D : in Float; S : in String) is
   begin
      T.Degrees := D;
      T.Scale := S;
   end Init;
   
   function GetDegrees(T : in Temperature) return Float is
   begin
      return T.Degrees;
   end GetDegrees;
   
   function GetScale(T : in Temperature) return String is
   begin
      return T.Scale;
   end GetScale;
      
   procedure GetCelsius(T : out Temperature) is--return Float is
   begin 
      T.Scale := "C";
      if T.Scale = "C" or T.Scale = "c" then
	 return;--return T.Degrees;
      else if (T.Scale = "F" or T.Scale = "f") then
	 T.Degrees := (T.Degrees - 32.0)*(5.0/9.0);
	 --return T.Degrees;
      else
	 T.Degrees := (T.Degrees - 273.15);
	 --return T.Degrees;
      end if;
      end if;
   end GetCelsius;
      
   procedure GetKelvin(T : out Temperature) is--return Float is
   begin 
      T.Scale := "K";
      if T.Scale = "K" or T.Scale = "k" then
	 -- return T.Degrees;
	 return;
      else if (T.Scale = "F" or T.Scale = "f") then
	 T.Degrees := ((T.Degrees - 32.0) * (5.0/9.0)) + 273.15;
	 --return T.Degrees;
      else
	 T.Degrees := (T.Degrees + 273.15);
	 --return T.Degrees;
      end if;
      end if;
   end GetKelvin;
   
   procedure GetFahrenheit(T : out Temperature) is-- return Float is
   begin
      T.Scale := "F";
      if T.Scale = "F" or T.Scale = "f" then
	 -- return T.Degrees;
	 --return;
	 T.Degrees := T.Degrees;
      else if (T.Scale = "C" or T.Scale = "c") then
	 T.Degrees := ((T.Degrees * (9.0/5.0)) + 32.0);
	-- return T.Degrees;
      else
	 T.Degrees := (((T.Degrees - 273.15) * (9.0/5.0)) + 32.0);
	-- return T.Degrees;
      end if;
      end if;
   end GetFahrenheit;

   procedure InputTemp(T : out Temperature; D : in Float; S : in String) is
   begin
      T.Scale := S;
      T.Degrees := D;
   end InputTemp;
   
   procedure PrintTemp(T : in Temperature) is--return String is --(1.. 8) is
   begin 
      Put(GetDegrees(T));
      Put(GetScale(T));
      --return " ";-- T.Degrees and then " " and then T.Scale and then " ";
   end PrintTemp;
   
   procedure RaiseTemp(T : out Temperature; D : in Float) is
   begin
      T.Degrees := T.Degrees + D;
   end RaiseTemp;
   
   procedure LowerTemp(T : out Temperature; D : in Float) is
   begin
      T.Degrees := T.Degrees - D;
   end LowerTemp;
   
   function Equals(T : in Temperature; T2 : in Temperature) return Boolean is
   begin
      if T.Degrees = T2.Degrees then
	 return True;
      else
	 return False;
      end if;
   end Equals;
   
   function LessThan(T : in Temperature; T2 : in Temperature) return Boolean is
   begin
      if T.Degrees < T2.Degrees then
	 return True;
      else
	 return False;
      end if;
   end LessThan;
end Temperature_Package;
bda5@augusta:~/214/projects/08/Ada$ cat temperature_package.adb[1P[1P[1P[1P[1P[1P[1P[1@t[1@e[1@s[1@t[1@e[1@r

with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package; use Temperature_Package;

procedure Temperature_Tester is
   --local variables needed declarations here
   BaseTemp, LimitTemp : Temperature_Package.Temperature;
   StepValue : Float;
begin
   Temperature_Package.Init(BaseTemp, 0.0, "F");
   Temperature_Package.Init(LimitTemp, 100.0, "C");
   StepValue := 2.5;
   
   while LessThan(BaseTemp, LimitTemp)
   loop
      GetCelsius(BaseTemp);
      --Put(PrintTemp(BaseTemp));
      PrintTemp(BaseTemp);
      GetFahrenheit(BaseTemp);
      --Put(PrintTemp(BaseTemp));
      PrintTemp(BaseTemp);
      GetKelvin(BaseTemp);
      --Put(PrintTemp(BaseTemp));
      PrintTemp(BaseTemp);
      RaiseTemp(BaseTemp, StepValue);
      New_Line;
   end loop;
   
end Temperature_Tester;
bda5@augusta:~/214/projects/08/Ada$ gcc -c temperature_                   gcc -c temperature_tester.adb
bda5@augusta:~/214/projects/08/Ada$ gcc -c temperature_package.adb
temperature_package.adb:77:07: no candidate interpretations match the actuals:
temperature_package.adb:77:07: missing argument for parameter "Item" in call to "Put" declared at a-textio.ads:241
temperature_package.adb:77:07: missing argument for parameter "Item" in call to "Put" declared at a-textio.ads:207
temperature_package.adb:77:07: possible missing instantiation of Text_IO.Float_IO
temperature_package.adb:77:11: expected type "Standard.String"
temperature_package.adb:77:11: found type "Standard.Float"
temperature_package.adb:77:11:   ==> in call to "Put" at a-textio.ads:242
temperature_package.adb:77:11:   ==> in call to "Put" at a-textio.ads:208
bda5@augusta:~/214/projects/08/Ada$ gnatbind        exit

Script done on Thu 12 Apr 2018 06:10:58 PM EDT
