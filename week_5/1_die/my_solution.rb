# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

#class Die
 # def initialize(sides)
    # code goes here
  #end
  
  #def sides
    # code goes here
  #end
  
  #def roll
    # code goes here
  #end
#end



# 4. Refactored Solution


class Die
  def initialize(sides)
  	@sides = sides
  	unless sides >= 1
  		raise ArgumentError.new ("Only numbers 1 and greater are allowed")
  	end


  end
  
  def sides
  	@sides
  end
 
  def roll
    return 1 + rand(@sides)
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

createDie = Die.new(6)

p createDie.sides == 6
p createDie.roll >= 1
p createDie.roll <= 6







# 5. Reflection 
