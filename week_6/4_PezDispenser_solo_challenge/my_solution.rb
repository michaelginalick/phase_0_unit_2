# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# create a class called PezDispenser
# 	define reader method for flavors_arr

# 	DEFINE initialize method that takes 1 argument, flavors_arr
# 		set instance variable flavors_arr to the argument
# 		unless an array is given as an argument, throw an error message
# 	END define initialize

# 	DEFINE pez_count method (no arguments)
# 		return the length of flavors_arr
# 	END define pez_count

# 	DEFINE add_pez method that takes 1 argument, item
# 		add the item to the end of flavors_arr
# 	END define add_pez

# 	DEFINE get_pez (no arguments)
# 		return the last elements of flavors_arr
# 	END define get_pez

# 	DEFINE see_all_pez
# 		return flavors_arr in reverse order (since pez are effectively a stack, but we want to see the pez in the order in which we'll get to eat them)
# 	END define see_all_pez
# END class PezDispenser


# 3. Initial Solution

class PezDispenser
	def initialize(flavors_arr)
		@flavors_arr = flavors_arr
	end

	def pez_count
		@flavors_arr.length
	end

	def add_pez(item)
		@flavors_arr << item
	end

	def get_pez
		@flavors_arr.pop
	end

	def see_all_pez
		@flavors_arr
	end
 
end
 


# 4. Refactored Solution
class PezDispenser
	attr_reader :flavors_arr

	def initialize(flavors_arr)
		@flavors_arr = flavors_arr
		raise ArgumentError.new("Please enter an array with pez flavors") unless flavors_arr.class == Array 
	end

	def pez_count
		@flavors_arr.length
	end

	def add_pez(item)
		@flavors_arr << item
	end

	def get_pez
		@flavors_arr.pop
	end

	def see_all_pez
		@flavors_arr.reverse
	end
 
end


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
gandalf = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{gandalf.pez_count} pez!"
puts "Here's a look inside the dispenser:"  
puts gandalf.see_all_pez 

puts "Adding a purple pez."
gandalf.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{gandalf.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{gandalf.get_pez}"
puts "Now you have #{gandalf.pez_count} pez!"

def assert
	raise "Assertion failed" unless yield
end

assert {gandalf.pez_count == 9 }
gandalf.add_pez("purple")
assert {gandalf.flavors_arr.include?("purple")} 
assert {gandalf.pez_count == 10 }
assert{ gandalf.get_pez == "purple"}
assert {gandalf.pez_count == 9 }
last = gandalf.flavors_arr.last
assert {gandalf.get_pez == last}

# 5. Reflection 
=begin
The most important rediscovery I made during this challenge was reader/writer methods.
In the previous assignments this week, I had been using a really bulky method
to access instance variables, but then I realized that this can be simply
in Ruby with the use of attr_reader, attr_writer, and attr_accessor.  (So I 
went back and refactored the previous assignments.)  As a result, this 
challenge really solidified the difference between methods and attributes for
me.

This is also one of the first times I translated a user story, which is one of the 
primary reasons I decided to do this challenge solo instead of the playlist one.
It was interesting and I still have some questions.  For example, the user stories
don't make it clear what format the inputs or outputs should be.  Does the user
want to input an array of flavors?  When the user wants to see what flavors are
in the pez dispenser, should the method puts that information or just return it?
(In general, I'm not entirely sure when a method should puts something in cases like
this: if #see_all_pez were to puts all the flavors, then what would that method return?
Do we care what that method returns?  It seems strange not to return something from 
a method.)

Overall, this challenge wasn't tedious and I feel reasonably confident with the 
learning competencies.
=end