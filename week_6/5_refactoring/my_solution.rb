# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s
    if @card_num.length != 16
      raise ArgumentError
    end
  end

  def check_card
    nums = @card_num.split(//).reverse.map {|num| num.to_i}
    doubled = []
    undoubled = []
    nums.each_with_index do |num, i|
      if i.odd?
        doubled << num*2
      else
        undoubled << num
      end
    end
    new_doubled = doubled.join.to_i.to_s.split(//).map {|num| num.to_i}
    sum = new_doubled.inject(:+) + undoubled.inject(:+)

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end



# Refactored Solution
class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s
    if @card_num.length != 16
      raise ArgumentError
    end
  end

  def check_card
    nums = @card_num.split(//).map {|num| num.to_i} # deleted unnecessary #reverse.
    doubled = [] # deleted "undoubled" array and put all numbers into the doubled array in the following each loop.  This reduces some repetition in later code
    nums.each_with_index do |num, i|
      if i.odd?
        doubled << num * 2 # added some spaces
      else
        doubled << num
      end
    end
    new_doubled = doubled.join.split(//).map {|num| num.to_i}  # deleted ".to_i.to_s".  They aren't necessary since #join results in a string
    sum = new_doubled.inject(:+)

    return sum % 10 == 0 # reduced if-else statement to boolean expression
  end
end


# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed" unless yield
end
card = CreditCard.new(4408041234567892)
assert{ card.check_card == false }
card = CreditCard.new(4408041234567893)    
assert{ card.check_card == true }


# Reflection 

# The original code was in pretty good shape to begin with, but I made a few changes that eliminated
# some redundancy and simplified a few of the blocks.  The indentation was fine and the I thought
# the variables were named well.  One of the changes I made was to simplify the last if-else statement
# into a boolean statement.  Whenever a method is returning true/false, an if-else statement isn't 
# necessary; instead, you can just return the result of the boolean statement you are testing.

# One thing I learned during this exercise is that #join will, by default, join all the elements in
# an array and make them into a single string, regardless of the class of the elements in the array.  
# So here, it took an array of integers and joined them into a string of those integers.  It was
# pretty useful in this exercise.  

# I noticed that #initialize defines @card_num but doesn't really use it -- in the #check_card method,
# the first line changes @card_num to something else.  We could have started by defining @card_num
# as nums is defined, thus eliminating a variable.  In the end, I decided against it because it's
# possible that we may later want to add other methods that do use @card_num.  But I wasn't 100%
# sure about this decision.

# This was a good way to reflect on my own refactoring skills, and I ran into some of the same problems
# I run into when refactoring my own code.  For example, sometimes it is possible to express the same
# exact functionality in fewer lines, but I'm not sure if this is considered good practice or not.  It 
# seemslike there is probably a middle ground to shoot for here, balancing readability with shortening 
# the code.
	
# I found this exercise to be enjoyable and not tedious.  I feel pretty solid on the learning
# competencies.
