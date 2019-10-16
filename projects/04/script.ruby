Script started on Tue 27 Feb 2018 04:26:48 PM EST
bda5@church:~/214/projects/04$ ruby compute_factorial.rb
 enter a number: 5
Factorialization: 120.0
bda5@church:~/214/projects/04$ cat     cat computeF _factorial.rb
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
bda5@church:~/214/projects/04$ exit

Script done on Tue 27 Feb 2018 04:27:25 PM EST
