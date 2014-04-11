# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a number
# Output: a class with methods guess and solved?
# Steps: 
# => DEFINE a class called GuessingGame
# =>  	INITIALIZE the class 
# =>  		SET instance variable answer to the input
# =>  		SET instance variable solved to false
# =>  	DEFINE a method called guess that takes one argument
# =>  		IF the argument is less than the guess
# =>  			SET solved to false
# =>  			RETURN :low
# =>  		ELSIF the argument is larger than the guess
# =>  			SET solved to false
# =>  			RETURN :high
# =>  		ELSE
# =>  			SET solve to true
# =>  			RETURN :correct
# =>  	END definition of guess
# =>  	DEFINE a method called solved?
# =>  		IF solved is true
# =>  			return true
# =>  		ELSE
# =>  			return false
# =>  		END if-else statement
# =>  	END solved?
# => END class GuessingGame


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
  	if guess < @answer
  		@solved = false
  		return :low
  	elsif guess > @answer
  		@solved = false
  		return :high
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	if @solved == true
  		return true
  	else
  		return false
  	end
  end
end




# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
  	@solved = false
  	if guess < @answer
  		return :low
  	elsif guess > @answer
  		return :high
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	return @solved
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE
puts GuessingGame.instance_method(:initialize).arity == 1
puts GuessingGame.method_defined?(:guess) == true
puts GuessingGame.instance_method(:guess).arity == 1
puts GuessingGame.instance_method(:solved?).arity == 0
puts GuessingGame.new(10).guess(100) == :high
puts GuessingGame.new(10).guess(0) == :low
puts GuessingGame.new(10).guess(10) == :correct




# 5. Reflection 
=begin
I enjoyed this challenge.  Before starting phase 0, I was doing a bunch of
Ruby programming for the first time and the past two weeks have reinforced
some of what I learned during the prep phase.  This exercise reminded me
that it's unnecessary to use an if-else statements to return the value of 
a boolean--I can just return the value of the boolean.  I suppose this is
fairly obvious, but I remember doing it a few times during the prep phase
(and I did it again here!).

Initially I had some trouble with the assignment because inside the if statement
in the guess method, I had changed the value of the @solved variable after the 
return, so the tests that checked the solved? method were failing--the @solved 
variable wasn't being changed.  Again, I feel like this ias a fairly obvious mistake 
in retrospect.	

Other than that, the assignment was fairly straighforward.  Nothing was particularly
tedious, and I feel pretty confident with the learning objectives.
=end
