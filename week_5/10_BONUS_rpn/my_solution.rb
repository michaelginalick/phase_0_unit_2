# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a string of numbers and opertions
# Output: a number
# Steps:

# 3. Initial Solution
class RPNCalculator
	def evaluate(string)
	  	a = string.split(" ")
	  	array = Array.new
	  	array2 = Array.new
	  	a.each do |i|
	  		if i != "+" && i != "-" && i != "*"
	  			array << i.to_i
	  		else
	  			array << i
	  		end
	  	end
	  	
	  	for i in 0..array.length - 3
	  		if array[i].class == Fixnum && array[i+1].class == Fixnum && array[i+2].class != Fixnum
	  			if array[i+2] == "+"
	  				array2.push(array[i]+array[i+1])
	  			elsif array[i+2] == "-"
	  				array2.push(array[i]-array[i+1])
	  			elsif array[i+2] == "*"
	  				array2.push(array[i]*array[i+1])
	  			end
	  			array.delete_at(i)
	  			array.delete_at(i+1)
	  			#array.delete_at(i+2)
	  			i += 1
	  		else
	  			array2.push(array[i])
	  			i += 1
	  		end
	  	end

	  	if array2.length <= 1
	  		return array2[0]
	  	else
	  		evaluate(array2.join(" "))
	  	end
	end
end

# 4. Refactored Solution
class RPNCalculator
	def evaluate(string)
        array = string.split(" ")
        for i in 0...array.length
            a = array[i]
            if a != "+" && a != "-" && a != "*"
                array[i] = array[i].to_i
            end
        end
        until array.length == 1
            i = 1
            while i < array.length
                if array[i+1].class != Fixnum
                    if array[i+1] == "+"
                        array[i-1] = array[i-1] + array[i]
                    elsif array[i+1] == "-"
                        array[i-1] = array[i-1] - array[i]
                    elsif array[i+1] == "*"
                        array[i-1] = array[i-1] * array[i]
                    end
                    array.delete_at(i)
                    array.delete_at(i)
                    if array.length > 3 && array[i+1].class != Fixnum
                        i = i - 1
                    elsif array.length == 3
                        i = 1
                    end
                else
                    i += 1
                end
            end
        end
        return array[0]
    end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new
puts calc.evaluate('1 1 +') == 2
puts calc.evaluate('2 2 *') == 4
puts calc.evaluate('5 10 -') == -5
puts calc.evaluate('1 2 3 4 + + +') == 10
puts calc.evaluate('20 10 5 4 + * -') == -70





# 5. Reflection 
