Script started on Mon 23 Apr 2018 04:17:00 PM EDT
bda5@sutherland:~/214/projects/10/ruby$ cat Bird.rb Duck.rb Goose.rb Owl.rb Peng uin.rb Ostrich.rb Kiwi.rb birds.rb
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
    puts name + " " + className + " " +  move + " and says " + call
  end

  def move
    'flew'
  end
  
end
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
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Bryce Allen
# Date: 4/23/18
####################################################

require './Bird.rb'

class Owl < Bird

  def call
    'woo hoo'
  end
  
end
# Penguin.rb | Defines a Penguin sub class  
#
# Completed by: Bryce Allen
# Date: 4/23/18
####################################################

require './Bird.rb'

class Penguin < Bird

  def call
    'noot'
  end

  def move
    'waddled'
  end
  
end
# Ostrich.rb defines a class Ostrich
#
# by: Bryce Allen
# date: 4/23/18
########################################################

require './Bird.rb'

class Ostrich < Bird

  def call
    'Sqwauk'
  end

  def move
    'ran'
  end

end
# kiwi.rb defines a class Kiwi
#
# by: Bryce Allen
# date: 4/23/18
##################################################

require './Bird.rb'

class Kiwi < Bird

  def call
    'Chirp'
  end

  def move
    'walked'
  end

end
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
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'



puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print

bird5 = Ostrich.new "Oliver"
bird5.print

bird6 = Kiwi.new "Kevin"
bird6.print

puts "\n\n"
bda5@sutherland:~/214/projects/10/ruby$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird flew and says squaaaaawwwk!
Donald Duck flew and says quack
Mother Goose flew and says honk
Woodsey Owl flew and says woo hoo
Peter Penguin waddled and says noot
Oliver Ostrich ran and says Sqwauk
Kevin Kiwi walked and says Chirp


bda5@sutherland:~/214/projects/10/ruby$ exit

Script done on Mon 23 Apr 2018 04:17:43 PM EDT
