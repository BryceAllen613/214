
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
