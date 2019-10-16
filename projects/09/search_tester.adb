-- search.rb searches for a integer in a list
-- cs 214
-- Project 9
-- Calvin College
-- By Bryce Allen
-- 4/16/18
------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
use Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 

procedure Search_Tester is
   
   List1, List2, List3, List4 : List;   
   
begin
  Init(List1);                -- initialize them 
  Init(List2); 
  Init(List3); 
  Init(List4);
  
  Append(99, List1);          -- 99, 88, 77, 66, 55 
  Append(88, List1);          -- max is first 
  Append(77, List1); 
  Append(66, List1); 
  Append(55, List1); 
 
  Append(55, List2);          -- 55, 66, 77, 88, 99 
  Append(66, List2);          -- max is last 
  Append(77, List2); 
  Append(88, List2); 
  Append(99, List2); 
 
  Append(55, List3);          -- 55, 77, 99, 88, 66 
  Append(77, List3);          -- max is in the middle 
  Append(99, List3); 
  Append(88, List3); 
  Append(66, List3); 
  
  Append(55, List4);          -- 55, 77, 88, 66 
  Append(77, List4);          -- max is in the middle  
  Append(88, List4); 
  Append(66, List4); 
  
  Put(Search(List1, 99));
  Put(Search(List2, 99));
  Put(Search(List3, 99));
  Put(Search(List4, 99));
  
end Search_Tester;
