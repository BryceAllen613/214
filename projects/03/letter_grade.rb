#letter_grade.rb
#
#input: integer representing grade percentage
#precondition: input is an integer between 0 and 100
#output: a letter grade.
#
#completed by: Bryce Allen 
#cs 214, Calvin College
#2/20/18
#########################################################################

def letterGrade(g)
  case g
  when 90..100
    return 'A'
  when 80..89
    return 'B'
  when 70..79
    return 'C'
  when 60..69
    return 'D'
  else return 'F'
  end
end


if __FILE__ == $0
  print "Enter percentage: "
  g = gets
  print "Letter Grade is: "
  puts letterGrade(g)
end
