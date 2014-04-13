# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a 16 digit number
# Output: a method that checks if the number is a valid credit card number -- returns true/false accordingly
# Steps:
=begin
DEFINE a class CreditCard
	DEFINE method initialize that takes a number as argument
		SET @cc_arr to an array of single-digit numbers where each element is a digit in the input number
		UNLESS the length of @cc_arr is 16
			Raise an argument error
		END unless
	END initialize method

	DEFINE a method check_card
		SET @cc_arr_check to an empty array
		ITERATE over each index of @cc_arr
			IF the index is even
				multiply the element of @cc_arr by 2 and PUSH it to @cc_arr_check
			ELSE
				PUSH the element to @cc_arr_check
			END if statement
		END iterate
		Change the elements of @cc_arr_check from numbers to strings
		Add all the strings in @cc_arr_check into one string
		Add all the digits in this string to get a single number
		If this number is a multiple of 10
			RETURN true
		Otherwise
			RETURN false
		END
	END check_card method

=end

# 3. Initial Solution
=begin
class CreditCard
	def initialize(number)
		@cc_arr = number.to_s.split("").map {|string| string.to_i}
		unless @cc_arr.length == 16
			raise ArgumentError.new('CC number needs to be 16 digits.')
		end
	end

	def check_card
		@cc_arr_check = Array.new
		@cc_arr.each_index do |index|
			if index % 2 == 0
				@cc_arr_check[index] = @cc_arr[index] * 2
			else
				@cc_arr_check[index] = @cc_arr[index]
			end
		end
		@cc_arr_check.map!{|int| int.to_s}
		string = @cc_arr_check.reduce{|sum, n| sum + n}
		@individual_digits = string.split("").map{|string| string.to_i}
		@num = @individual_digits.reduce{|sum, n| sum + n}
		if @num % 10 == 0
			return true
		else
			return false
		end
	end

end
=end


# 4. Refactored Solution
class CreditCard
	def initialize(number)
		@digits_arr = number.to_s.split("").map {|string| string.to_i}
		unless @digits_arr.length == 16
			raise ArgumentError.new('Card number needs to be 16 digits long.')
		end
	end

	def check_card
		doubled_arr = Array.new
		@digits_arr.each_with_index do |digit, index|
			if index % 2 == 0
				doubled_arr << (digit * 2).to_s
			else
				doubled_arr << digit.to_s
			end
		end
		digits_to_add = doubled_arr.reduce(:+).split("").map{|string| string.to_i}

		return digits_to_add.reduce(:+) % 10 == 0
	end

end

# 1. DRIVER TESTS GO BELOW THIS LINE
puts CreditCard.instance_method(:initialize).arity == 1
puts CreditCard.instance_method(:check_card).arity == 0
puts CreditCard.new(4408041234567892).check_card == false
puts CreditCard.new(4408041234567893).check_card == true


# 5. Reflection 
=begin
This is one of the first challenges where I feel I truly refactored my code,
and I'm pretty happy with the result.  I tried to clean up the variable names
to make them more clear and also to think of cleaner ways to complete each 
line of pseudocode.  For example, I changed .reduce{|sum, n| sum += n} to .reduce(:+)
which I think is easier to read.

I also got to know local/instance variables better in this exercise (which is reflected
in the refactor).  I tried to define all variables as local variables unless I knew
they would be needed in other methods.

I struggled a bit at the beginning because I jumped into the assignment too quickly
and didn't read what the code was supposed to be doing carefully enough.  As a result, I 
missed that each DIGIT was supposed to be added after doubling half the digits, not
each NUMBER.  It took me some time to figure out why the tests and rspec were failing.
 I think this shows how important it is to focus on the pseudocode and the
assignment/goal before jumping in to code.

The logic behind the algorithm wasn't too hard to implement once I figured out exactly
what the end-goal was, but I spent some time looking up methods on ruby-doc.org in
the hopes I would find some that did just what I wanted.  I'm not sure I've done
this in the best possible way, but the challenge definitely helped me get more 
familiar with iterating over arrays and converting between arrays and strings.
=end
