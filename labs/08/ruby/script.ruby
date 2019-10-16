Script started on Thu 05 Apr 2018 09:18:31 PM EDT
bda5@sutherland:~/214/labs/08/ruby$ cat     cat na  Name.rb
# by: Bryce Allen
# Date: 5/5/18
###################################################
module Names
  class Name
    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName
      @first + " " + @middle + " " + @last
    end

    def print
      puts fullName
      fullName
    end
  end
end

bda5@sutherland:~/214/labs/08/ruby$ cat Nam   nameTester.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 5/5/18
####################################################

require 'test/unit/assertions'
require "./Name.rb"
include Test::Unit::Assertions


def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

bda5@sutherland:~/214/labs/08/ruby$ ruby nameTester.rb
John Paul Jones
All tests passed!
bda5@sutherland:~/214/labs/08/ruby$ exit

Script done on Thu 05 Apr 2018 09:18:54 PM EDT
