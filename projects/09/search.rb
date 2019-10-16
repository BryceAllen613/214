# search.rb searches for a integer in a list
# cs 214
# Project 9
# Calvin College
# By Bryce Allen
# 4/16/18
########################################################
require './List'

# searcher for a value in a given list
# @param aList, and aValue; the list and value to be found
# @return the position of the value in the list
def search(aList, aValue)
  temp = aList.first
  pos = -1
  t = 0
  while !temp.nil?
    if temp.value == aValue
      pos = t
    end
    temp = temp.next
    t += 1
  end
  return pos
end

def searchTester
  list1 = List.new
  list2 = List.new
  list3 = List.new
  list4 = List.new

  list1.append(99).append(88).append(77).append(66).append(55)
  list2.append(55).append(66).append(77).append(88).append(99)
  list3.append(55).append(77).append(99).append(88).append(66)
  list4.append(55).append(66).append(77).append(88).append(101)

  print search(list1, 99)
  puts
  print search(list2, 99)
  puts
  print search(list3, 99)
  puts
  print search(list4, 99)
  puts
end

searchTester
