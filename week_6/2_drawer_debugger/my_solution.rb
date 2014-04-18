# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? => removing the last item from the @contents array, so if an item isn't specificed the method will default to the last item in the array
		@contents.delete(item)
	end

	def dump  # what should this method return? => an emptied @contents array
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end


class Silverware
	attr_reader :type, :clean

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? => nothing!

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
removed_fork.eat
removed_fork.clean_silverware

#BONUS SECTION
puts removed_fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed" unless yield
end

assert {silverware_drawer.class == Drawer}

silverware_drawer.open
assert { silverware_drawer.instance_variable_get(:@open) == true }

silverware_drawer.close
assert {silverware_drawer.instance_variable_get(:@open) == false }

silverware_drawer.add_item(fork)
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(sharp_knife)
assert { silverware_drawer.contents.include?(fork) }
assert { silverware_drawer.contents.include?(knife1) }
assert { silverware_drawer.contents.include?(sharp_knife) }

silverware_drawer.remove_item(fork)
assert { silverware_drawer.contents.include?(fork) == false }
assert { silverware_drawer.contents.include?(knife1) }
assert { silverware_drawer.contents.include?(sharp_knife) }

silverware_drawer.dump
assert { silverware_drawer.contents.length == 0 }

assert {fork.class == Silverware}

fork.eat
assert { fork.clean == false }

fork.clean_silverware
assert { fork.clean == true }


# 5. Reflection 
=begin
The most challenging part of this exercise was writing the driver code.  I'm not
entirely sure if I did this as expected, but it gave me a change to play around
with blocks and learn how to access instance variables outside the class.  Figuring
out how to access the instance variables was helpful because many of the methods
modify these variables, so I wanted to test if they were being modified 
appropriately.  But I'd still like to see more examples of assert statements.  It's 
possible to pass a multi-line block to the assert method, but I don't know if that's 
considered good practice or not.  For example, when testing the #eat method, should 
I call #eat on an object and then use #assert to test the result, or should I call 
#eat from within the #assert method, as shown below?
	assert do
		fork.eat
		fork.clean == false
	end

I also don't know how to test methods where what is returned is in a puts/print
statement.  For example, I didn't really test the #view_contents method.

Researching and playing around with the driver code was the most interesting part
of this exercise for me. Cleaning up the code was a lot more straightforward, 
although I'm not entirely sure the modifications I made on fork and #clean are
what the assignment was looking for.  But since there aren't any explicit directions
on how to fix the problems, I just focused on making the code and methods work in
a way that makes sense to me.

Overall this was a worthwhile exercise and I feel confident with the learning 
competencies, even if the challenge raised some other questions.
=end
