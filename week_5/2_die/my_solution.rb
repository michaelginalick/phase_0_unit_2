# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  end

  def sides
  end

  def roll
  end
end



# 4. Refactored Solution




class Die
  def initialize(labels)
  	if labels.length == 0
  		raise ArgumentError.new ("array can't be empty")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	return @sides
  end

  def roll
  	index = rand(@sides)
  	return @labels[index]
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(["A", "B", "C"])
p die.sides == 3
p die.roll == "A" || "B" || "C"


# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
