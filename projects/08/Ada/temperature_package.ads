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
