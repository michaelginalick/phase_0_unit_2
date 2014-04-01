# U2.W4: 


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: array of names
# Output: array of sets of people
# Steps:
# => DFEINE a method called groupGenerator that takes an array as input
# =>	SET random equal to a randomized version of the input array
# =>  	SET group to an empty array
# =>  	SET i to zero
# =>  	WHILE the length of random is larger than 4
# =>  		SET the ith element of the group to a set containing the first 4 elements in random
# =>  		DELETE the first 4 elements in random
# =>  		increase i by 1
# =>  	END while loop
#
# =>  	UNTIL the length of random is zero
# =>  		add the remaining elements to the sets that have already been created, 1 at a time
# =>  	END until loop
# => END definition of groupGenerator
#
#
# => DEFINE a method called difArray that takes two arrays as input
# =>  	WHILE true
# =>  		FOR i between 0 and the length of the first array
# =>  			FOR j between 0 and the length of the first array
# =>  				IF the ith element of the first array and the jth element of the second array have intersection with more than two elements
# =>  					return false
# =>  				END if statement
# =>  			END for statement
# =>  		END for statement
# =>  		RETURN true
# =>  	END while loop
# => END definition of defArray
#
# => DEFINE a method called accGroups that takes an array as input
# =>  	SET unit1, unit2, and unit3 to be the results of three different calls of groupGenerator
# =>  	UNTIL unit1/unit2, unit2/unit3, and unit1/unit3 all pass the difArray method
# =>  		SET unit2, unit3 to be the result of 2 separate calls of the groupGenerator method
# =>  	END until loop
# =>  	puts unit1, unit2, unit3
# => END definition of accGroups


# 3. Initial Solution
require 'set'
people = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", 
	"Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", 
	"Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", 
	"Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", 
	"Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", 
	"Zac Mitton"] 

def groupGenerator(array)
	random = array.shuffle
	group = Array.new
	i = 0
	while random.length > 4
		group[i]=[random[0], random[1], random[2], random[3]].to_set
		4.times{random.shift}
		i += 1
	end
	i = 0
	until random.length == 0
		group[i] << random[0]
		random.shift
	end
	return group
end

def difArray(array1, array2)
	while true
		for i in 0...array1.length
			for j in 0...array1.length
				if (array1[i] & array2[j]).length > 2
					return false
				end
			end
		end
		return true
	end
end

def accGroups(array)
	unit1 = groupGenerator(array)
	unit2 = groupGenerator(array)
	unit3 = groupGenerator(array)

	until difArray(unit1, unit2) && difArray(unit1, unit3) && difArray(unit2, unit3)
		unit2 = groupGenerator(array)
		unit3 = groupGenerator(array)
	end

	puts "Unit 1: #{unit1}"
	puts "Unit 2: #{unit2}"
	puts "Unit 3: #{unit3}"
end

# 4. Refactored Solution
require 'set'
people = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", 
	"Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", 
	"Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", 
	"Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", 
	"Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", 
	"Zac Mitton"] 

def groupGenerator(array)
	random = array.shuffle
	group = Array.new
	i = 0
	while random.length > 3
		group[i]=[random[0], random[1], random[2], random[3]].to_set
		4.times{random.shift}
		i += 1
	end
	i = 0
	until random.length == 0
		group[i] << random[0]
		random.shift
		i += 1
	end
	return group
end

def difArray(array1, array2)
	while true
		for i in 0...array1.length
			for j in 0...array1.length
				if (array1[i] & array2[j]).length > 2
					return false
				end
			end
		end
		return true
	end
end

def accGroups(array)
	unit1 = groupGenerator(array)
	unit2 = groupGenerator(array)
	unit3 = groupGenerator(array)

	until difArray(unit1, unit2) && difArray(unit1, unit3) && difArray(unit2, unit3)
		unit2 = groupGenerator(array)
		unit3 = groupGenerator(array)
	end

	return [unit1, unit2, unit3]
end
#puts accGroups(people).inspect

# 1. DRIVER TESTS GO BELOW THIS LINE
puts accGroups(people).length == 3  # are there 3 units?
puts groupGenerator(people).length == 5  # does the randomizer give 5 groups?
for i in 0...5
	puts groupGenerator(people)[i].length == 4 || groupGenerator(people)[i].length == 5
end  # is each of the groups either 4 or 5 people?
puts difArray([[1, 2, 3, 4].to_set, [5, 6, 7, 8].to_set], 
	[[1, 2, 3, 5].to_set, [4, 5, 6, 9].to_set]) == false # does difArray detect sets that are too similar?
puts difArray([[1, 2, 3, 4].to_set, [5, 6, 7, 8].to_set], 
	[[1, 2, 5, 6].to_set, [3, 4, 7, 8].to_set]) # does difArray pass when the arrays are sufficiently different?
result = accGroups(people)
puts difArray(result[0], result[1]) && difArray(result[1], result[2]) && difArray(result[0], result[2])
	# are the groups in the units sufficiently different?

# 5. Reflection 
=begin
I enjoyed that this problem was somewhat open ended.  What does it mean, specifically,
to avoid putting people together more than once?  I decided that for two sets of
accountability groups to be "sufficiently different", there can be overlap between
no more than two people per group.

Actually writing the code to ensure the sets of groups were "sufficiently different"
was really challenging and ultimately rewarding.  I spent some time trying to 
figure out the best way to break out of multiple loops.  As a result, I read up
a bit on throw/catch and retry.  I tried using both techniques but nothing worked
quite right until I realized it would probably work better to just separate that
part of the code into a completely different method (difArray) and use return to 
break out of the two loops.  This seems like a valuable insight.

I'm not sure I executed the challenge in quite the way the assignment was expecting, 
but overall I am happy with the results.  

This is the first time I wrote Drive Code, and it was definitely a bit of a challenge.
To me, the tests were completely non-obvious and I didn't know exactly how to test
the code until after I had written the methods.  But I think the test code
does a reasonably good job checking that each of the methods is doing what
I think it's doing.  And they all pass!

One way the code could be improved is by making it consider the overlap between
all three of the units simultaneously.  For example, person A could be with person B
in unit 1, person C in unit 2, and both person B and C in unit 3.  This seems not
super ideal, but I couldn't think of an easy way to address the problem.  I think
I'd actually have to look at each person (instead of sets, as is in the code above).
=end
