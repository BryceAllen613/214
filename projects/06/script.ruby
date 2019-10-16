Script started on Tue 27 Mar 2018 05:05:05 PM EDT
bda5@knuth:~/214/projects/06$ ruby s array_processing.rb
Enter number of values for the array: 
5
Enter the values: 
1.0
2.0
3.0
4.0
5.0
values are: 
1.0
2.0
3.0
4.0
5.0
bda5@knuth:~/214/projects/06$ cat array_processing.rb
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
bda5@knuth:~/214/projects/06$ exit

Script done on Tue 27 Mar 2018 05:05:46 PM EDT
