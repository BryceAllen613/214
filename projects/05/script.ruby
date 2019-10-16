Script started on Mon 05 Mar 2018 04:48:47 PM EST
bda5@hoare:~/214/projects/05$ cat quadratic_formula.rb
# quadratic_formula.rb computes quadratic formula given a b c values
#
# 3/5/18
# Bryce Allen
# cs 214
# Calvin College

root1 = 0.0
root2 = 0.0
def quadratic_formula(a, b, c)
  if a == 0
    print "invalid input"
  elsif ((b ** 2) - (4 * a * c)) < 0
    print "invalid input"
  else
    print "The roots are: "
    root1 = ((-b + Math.sqrt(((b ** 2) - (4 * a * c))))/(2 * a))
    print root1
    print " and "
    root2 = ((-b - Math.sqrt(((b ** 2) - (4 * a * c))))/(2 * a))
    print root2
    print " "
  end
end


if __FILE__ == $0
  print "enter a b and c:"
  a = gets
  b = gets
  c = gets
  quadratic_formula(a.to_i, b.to_i, c.to_i)
end
bda5@hoare:~/214/projects/05$ ruby quadrat            cat quadratic_formula.rbls[Kscript script.ada[2@./quadratic_formulagnatmake quadratic_formula.adb[11P./quadratic_formula[2Pscript script.adals[Kcat quadratic_formula.rb[Kruby quadratic_formula.rb
enter a b and c:1
1
0
The roots are: 0.0 and -1.0 bda5@hoare:~/214/projects/05$ exit

Script done on Mon 05 Mar 2018 04:49:45 PM EST
