Script started on Wed 31 Jan 2018 11:13:25 AM EST
bda5@vonneumann:~/214/labs/01$ cat circle_area- .rb
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:Bryce Allen
# Date:1/31/18
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927
def circleArea(r)
    PI * r ** 2 
end

if __FILE__ == $0
   puts "To compute the area of a circle,"
   print " enter its radius: "
   radius = gets.chomp.to_f
   print "The circle's area is: "
   puts circleArea(radius)
end
bda5@vonneumann:~/214/labs/01$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
bda5@vonneumann:~/214/labs/01$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
bda5@vonneumann:~/214/labs/01$ c ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
bda5@vonneumann:~/214/labs/01$ ruby circle_area.a rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104417
bda5@vonneumann:~/214/labs/01$ exit
exit

Script done on Wed 31 Jan 2018 11:14:37 AM EST
