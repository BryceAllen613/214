#rectangle_area.rb computes area of rectangle
#input: length and width of said rectangle
#Started by: Bryce Allen
#2/6/18
#################################################

def rectangleArea(l,w)
    l*w 
end

if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its length: "
   length = gets.chomp.to_f
   print " enter its width: "
   width = gets.chomp.to_f
   print "The circle's area is: "
   puts rectangleArea(length,width)
end
