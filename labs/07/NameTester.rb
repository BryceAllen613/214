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
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

