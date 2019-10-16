Script started on Fri 20 Apr 2018 04:54:10 PM EDT
bda5@aiken:~/214/labs/10/ruby$ cat bird    Bird.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 4/20/18
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call
    'squaaaaawwwk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + className + " says " + call
  end
  
end
bda5@aiken:~/214/labs/10/ruby$ cat Owl.rb
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 4/20/18
####################################################

require './Bird.rb'

class Owl < Bird

  def call
    'woo hoo'
  end
  
end
bda5@aiken:~/214/labs/10/ruby$ cat Duck.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Bryce Allen
# Date: 4/20/18
####################################################

require './Bird.rb'

class Duck < Bird

  def call
    'quack'
  end
  
end
bda5@aiken:~/214/labs/10/ruby$ cat Goose.rb
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 4/20/18
####################################################

require './Bird.rb'

class Goose < Bird

  def call
    'honk'
  end

end
bda5@aiken:~/214/labs/10/ruby$ cat birds.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 4/20/18
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"
bda5@aiken:~/214/labs/10/ruby$ ruby birds.rb

Welcome to the Bird Park!

HawkeyeBird says squaaaaawwwk!
DonaldDuck says quack
MotherGoose says honk
WoodseyOwl says woo hoo


bda5@aiken:~/214/labs/10/ruby$ exit

Script done on Fri 20 Apr 2018 04:54:42 PM EDT
