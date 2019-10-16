Script started on Thu 05 Apr 2018 03:27:01 PM EDT
bda5@kay:~/214/projects/07$ cat name    Nam   NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 3/28/18
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name
  #Initializes the a Name object
  #param first middle and last: first middle and last names respectively
  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end
  
  attr_reader :first, :middle, :last
  
  #returns the full name of representing the object
  def fullName
   return @first + " " + @middle + " " + @last
  end

  #prints fullName function and returns it aswell
  def print
    puts fullName
    return fullName
  end

  def setFirst(f)
    @first = f
  end

  def setMiddle(m)
    @middle = m
  end

  def setLast(l)
    @last = l
  end

  def lfmi
    return @last + ", " + @first + " " + @middle[0..0];
  end

  def read
    puts "Enter new first middle and last names: "
    @first = gets
    @middle = gets
    @last = gets
  end
  
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   assert name.lfmi == "Jones, John P", "lfmi failed"
   name.read
   assert name.first != "John", "first failed"
   assert name.middle != "Paul", "middle failed"
   assert name.last != "Jones", "last failed"
   name.setFirst("John")
   name.setMiddle("Paul")
   name.setLast("Jones")
   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   print "All tests passed!\n"
end

testName

bda5@kay:~/214/projects/07$ can   ruby    ruby NameTester.rb
John Paul Jones
Enter new first middle and last names: 
Bryce
David
Allen
All tests passed!
bda5@kay:~/214/projects/07$ exit

Script done on Thu 05 Apr 2018 03:27:52 PM EDT
