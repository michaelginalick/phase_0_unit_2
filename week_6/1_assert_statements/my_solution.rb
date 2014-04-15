# U2.W6: Testing Assert Statements


# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# DEFINE method assert
# 	raise error message "Assertion failed!" unless the inserted block is true
# END assert method

# SET name to "bettysue"

# call assert method with the block: name is equivalent to "bettysue"
# call assert method with the block: name is equivalent to "billybob"
	
# So what is happening with the error message?  Basically, each block is being
# plugged in when the yield statement is called.  So if the block is true,
# nothing happens.  If the block is false, an error is raised.  The output
# reflects both the line with the block and the line with the error statement.


# 3. Copy your selected challenge here
def separate_comma(number)
	digit_string = number.to_s.reverse
	index = 3
	while index < digit_string.length
		digit_string.insert(index, ",")
		index += 4
	end
	return digit_string.reverse
end



# 4. Convert your driver test code from that challenge into Assert Statements
assert { separate_comma(1) == "1" }
assert { separate_comma(10) == "10" }
assert { separate_comma(100) == "100" }
assert { separate_comma(1000) == "1,000" }
assert { separate_comma(10000) == "10,000" }
assert { separate_comma(100000) == "100,000" }
assert { separate_comma(1000000) == "1,000,000" }
assert { separate_comma(10000000) == "10,000,000" }
assert { separate_comma(100000000) == "100,000,000" }
assert { separate_comma(1000000000) == "1,000,000,000" }
assert { separate_comma(10000000000000000000000000) == "10,000,000,000,000,000,000,000,000" }


# 5. Reflection 

# I had forgotten about yield until this exercise.  It seems like the ability to invoke
# a block will be very useful.  In fact, I've felt the desire to repeat the same 
# set of code within methods before, and it seems like blocks are probably going
# to be a useful way to do that.  

# Right now, I would prefer that my tests say true/false every time I run them--
# then if something does work, I know!  By using the assert method, you only
# know when things go wrong.  That said, I can imagine that long term it's probably
# annoying to see a whole bunch of "true" statements when testing: all you really
# want to know is when something has gone wrong.

# I am pretty confident with the learning objective for this exercise, but I'd
# like some more practice with blocks and using yield.

# Overall this was not a tedious exercise.  Nothing was particularly challenging,
# although as I mentioned, I did have to brush up on yield and blocks.
	
