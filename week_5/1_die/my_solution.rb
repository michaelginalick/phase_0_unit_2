# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a positive integer
# Output: a "die" that can be rolled
# Steps:
# => DEFINE a class called DIE
# =>  	INITIALIZE the class by defining an instance variable called @sides and raising an error when the input is not a positive integer
# =>  	END initialize
# =>  	DEFINE a method called sides
# =>  		return the number of sides
# =>  	END definition of sides
# =>  	DEFINE a method called roll
# =>  		return a random integer between 1 and the number of sides
# =>  	END roll
# => END class die


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides > 0
  	  raise ArgumentError.new("The die must have a positive integer number of sides.")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    return 1 + rand(@sides)
  end
end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides > 0
  	  raise ArgumentError.new("The die must have a positive integer number of sides.")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
puts Die.instance_method(:initialize).arity == 1
puts Die.instance_method(:sides).arity == 0
puts Die.instance_method(:roll).arity == 0
die = Die.new(6)
puts die.sides == 6
puts die.roll <= 6 && die.roll >= 1
die = Die.new(10)
puts die.sides == 10
puts die.roll <= 10 && die.roll >= 1



# 5. Reflection 
=begin
This exercise wasn't too bad.  It helped me brush up on how to define classes,
which I'd done a few weeks ago but mostly forgotten.  In particular, I feel I have
a much better grasp on initialize that I did when I learned it the first time.
This is partly because I struggled with where to put the until loop that throws
the argument error.  When I first wrote my Die class, the argument error was separate
from initialize, which didn't work.  Once I figured that the initialize method
is run as soon as a new instance of Die is defined, it became clear that the until
loop belonged inside that method.
	
=end