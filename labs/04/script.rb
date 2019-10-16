Script started on Thu 22 Feb 2018 09:00:24 PM EST
bda5@taylor:~/214/labs/04$ cat logTable.e rb
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.chomp.to_f
   print "Enter the stop value: "
   stop = gets.chomp.to_f
   print "Enter the increment value: "
   increment = gets.chomp.to_f

   while start <= stop
     print "Logarithm for " << start.to_s << " is: "
     puts Math.log10(start)
     start = start+increment
   end
end

bda5@taylor:~/214/labs/04$ ruby logTable
ruby: No such file or directory -- logTable (LoadError)
bda5@taylor:~/214/labs/04$ ruby logTable.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: .5
Logarithm for 1.0 is: 0.0
Logarithm for 1.5 is: 0.17609125905568124
Logarithm for 2.0 is: 0.3010299956639812
Logarithm for 2.5 is: 0.3979400086720376
Logarithm for 3.0 is: 0.47712125471966244
Logarithm for 3.5 is: 0.5440680443502757
Logarithm for 4.0 is: 0.6020599913279624
Logarithm for 4.5 is: 0.6532125137753437
Logarithm for 5.0 is: 0.6989700043360189
Logarithm for 5.5 is: 0.7403626894942439
Logarithm for 6.0 is: 0.7781512503836436
Logarithm for 6.5 is: 0.8129133566428556
Logarithm for 7.0 is: 0.8450980400142568
Logarithm for 7.5 is: 0.8750612633917001
Logarithm for 8.0 is: 0.9030899869919435
Logarithm for 8.5 is: 0.9294189257142927
Logarithm for 9.0 is: 0.9542425094393249
Logarithm for 9.5 is: 0.9777236052888477
Logarithm for 10.0 is: 1.0
bda5@taylor:~/214/labs/04$ exit

Script done on Thu 22 Feb 2018 09:00:50 PM EST
