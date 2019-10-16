#function computeFactorial returns the factorial of a number passed
#parameters: n, the number to be factoralized
#precondition: n is a positive integer
#return: the Factoralization of n.
#2/24/18
#Completed by: Bryce Allen for cs 214 at Calvin College
##############################################################################

def computeFactorial(n)
  a = 1.0
  for i in 2..n
    a = a*i
  end
  return a
end


if __FILE__ == $0
   print " enter a number: "
   num = gets.chomp.to_f
   print "Factorialization: "
   puts computeFactorial(num)
end
