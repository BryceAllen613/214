## array_processing.rb processes (reads and write values) to an array.
## By: Bryce Allen
## cs 214
## Calvin College
## 3/27/18
##########################################################################

def writeValues(anArray)
  for i in 0...anArray.size
      anArray[i] = gets.chomp.to_f
    end
end

def readValues(anArray)
  for i in 0...anArray.size
    puts anArray[i]
  end
end

  
def main
  puts "Enter number of values for the array: "
  size = gets.chomp.to_f
  arr = Array.new(size)
  puts "Enter the values: "
  writeValues(arr);
  puts "values are: "
  readValues(arr);
end

main
