# U2.W4: Separate numbers with commas


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a number
# Output: a string of a number with commas in the appropriate places
# Steps:
# DEFINE a method called separate_comma that takes a number as input
# => convert number to an array where each element is a digit
# => reverse order of elements in array
# => insert a comma before an element with index i where i mod 4 is 3
# => reverse elements in array
# => join all elements in array into a single string


# 3. Initial Solution
def separate_comma(number)
	digit_array = number.to_s.reverse.split("")
	for i in 0...(digit_array.length + (digit_array.length - 1) / 3)
		if i % 4 == 3
			digit_array.insert(i, ",")
		end
	end
	return digit_array.reverse.join("")
end


# 4. Refactored Solution

def separate_comma(number)
	digit_string = number.to_s.reverse
	index = 3
	while index < digit_string.length
		digit_string.insert(index, ",")
		index += 4
	end
	return digit_string.reverse
end


# 1. DRIVER TESTS GO BELOW THIS LINE
puts separate_comma(1) == "1"
puts separate_comma(10) == "10"
puts separate_comma(100) == "100"
puts separate_comma(1000) == "1,000"
puts separate_comma(10000) == "10,000"
puts separate_comma(100000) == "100,000"
puts separate_comma(1000000) == "1,000,000"
puts separate_comma(10000000) == "10,000,000"
puts separate_comma(100000000) == "100,000,000"
puts separate_comma(1000000000) == "1,000,000,000"
puts separate_comma(10000000000000000000000000) == "10,000,000,000,000,000,000,000,000"


# 5. Reflection 
=begin
This was a great exercise.  I particularly enjoyed refactoring.  My initial solution
makes total sense to me, but it's unnecessariy technical/complicated.  The refactor 
is simpler and much more readable.  Moreover, it mimics the process of how you would
actually solve this problem with a cursor on the computer: you start at the right 
end of the number and: 
	1. Count over three & insert a comma
	2. Count over 4 (because you have to skip the comma you just inserted) & insert
		a comma
	3. Repeat step 2 until you are at the end
I am also trying to improve naming my variables.  And I realized that all the methods
I was using on arrays in this exercise can also be called on strings, so converting
the string to an array (and then back again) are two unecessary steps.  So overall,
I feel I learned quite a bit from the exercise and am comfortable with the learning
objectives.

I this the rspec for this file is insufficient, and so I added many tests in the driver
code.  At one point I actually had a solution that was wrong but that passed all 
the tests (basically my method wasn't "finishing", so there were some commas missing 
at the end.)  I don't think the rspec covered cases where the number was many digits.

The hardest part of this exercise was adding ALL the commas in the correct place.
There are many ways to do this, but I really wanted to do it efficiently.
=end
