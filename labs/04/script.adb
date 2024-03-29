Script started on Thu 22 Feb 2018 08:59:23 PM EST
bda5@taylor:~/214/labs/04$ cat ll og_table.adb
-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Bryce Allen
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment, Count : Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);
   
   Count:=Start;
   loop
     exit when (Count >= Stop);
     Put("The log of ");
     Put(Count);
     Put(" is ");
     Put(log(Count,Float(10)));
     Count := Count+Increment;
   end loop;
end log_table;

bda5@taylor:~/214/labs/04$ gnatmake log_table.adb
gcc-5 -c log_table.adb
gnatbind-5 -x log_table.ali
gnatlink-5 log_table.ali
bda5@taylor:~/214/labs/04$ ./log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1
10
.5
The log of  1.00000E+00 is  0.00000E+00The log of  1.50000E+00 is  1.76091E-01The log of  2.00000E+00 is  3.01030E-01The log of  2.50000E+00 is  3.97940E-01The log of  3.00000E+00 is  4.77121E-01The log of  3.50000E+00 is  5.44068E-01The log of  4.00000E+00 is  6.02060E-01The log of  4.50000E+00 is  6.53212E-01The log of  5.00000E+00 is  6.98970E-01The log of  5.50000E+00 is  7.40363E-01The log of  6.00000E+00 is  7.78151E-01The log of  6.50000E+00 is  8.12913E-01The log of  7.00000E+00 is  8.45098E-01The log of  7.50000E+00 is  8.75061E-01The log of  8.00000E+00 is  9.03090E-01The log of  8.50000E+00 is  9.29419E-01The log of  9.00000E+00 is  9.54243E-01The log of  9.50000E+00 is  9.77724E-01
bda5@taylor:~/214/labs/04$ exit

Script done on Thu 22 Feb 2018 08:59:55 PM EST
