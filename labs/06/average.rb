# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date:   3/15/18
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(anArray)
    sum = 0.0
   # for i in 0...anArray.size
    #  sum = sum + anArray[i]
   # end
    anArray.each{|i| sum = sum+i}
    return sum
  end
  

###############################################
# average() averages the values in an array
# Receive: anArray, an array of numbers
# Return: average of the values in the array
################################################

def average(anArray)
  return sum(anArray)/anArray.size
end

def main
  array0 = Array.new
  array1 = [9.0,8.0,7.0,6.0]

  puts "sum 0 is: #{ sum(array0) }\n"
  puts "sum 1 is: #{ sum(array1) }\n"

  puts "average 0 is: #{ average(array0) }\n"
  puts "average 1 is: #{ average(array1) }\n"
end

main

