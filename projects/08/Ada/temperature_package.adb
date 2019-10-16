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
