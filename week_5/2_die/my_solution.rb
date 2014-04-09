# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an array with labels for the sides of the die
# Output: a class with methods that count the number of sides of the die and roll the die
# Steps:
# => DEFINE a class called DIE
# =>  	INITIALIZE the class by defining an instance variable called @labels and raising an error when the length of the input array is zero
# =>  	END initialize
# =>  	DEFINE a method called sides
# =>  		return the length of the input array
# =>  	END definition of sides
# =>  	DEFINE a method called roll
# =>  		return a random entry from the input array
# =>  	END roll
# => END class die


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.length == 0
  		raise ArgumentError.new("Please enter an array with at least one element.")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end

# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels_arr = labels
  	if @labels_arr.length == 0
  		raise ArgumentError.new("Please enter an array with at least one element.")
  	end
  end

  def sides
  	@labels_arr.length
  end

  def roll
  	@labels_arr[rand(@labels_arr.length)]
  end
end
# I only made one small change to the code--I changed the variable name of the 
# input array.  I think this makes the code slightly more readable by emphasizing
# that the variable is an array.  But it's pretty minor.  Overall, the code is 
# pretty concise.



# 1. DRIVER TESTS GO BELOW THIS LINE
puts Die.instance_method(:initialize).arity == 1
puts Die.instance_method(:sides).arity == 0
puts Die.instance_method(:roll).arity == 0
puts Die.new(("A".."Z").to_a).sides == 26
puts Die.new(["A"]).roll == "A"




# 5. Reflection 
=begin
I did this exercise right after doing the first challenge and found it to be 
a very natural extension of that assignment.  

I got a bit thrown off by #rand and had to double check if it was inclusive
or not (it's not).  So I had some "off by one" errors for a while.  But other
than that, the assignment was pretty straightforward.

One problem I had during the first challenge and again during this challenge is 
that I scan't figure out how to check the argument error using driver code.

Throughout this challenge and the last one, I have been referencing the Chris
Pine book, which is where I initially read/took notes about defining new classes.
It has been very helpful.

Overall I'm pretty confident with the learning objectives, although
I didn't use loops much in this assignment.
=end
