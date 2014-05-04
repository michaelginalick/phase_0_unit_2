# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

require 'set'
people = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", 
  "Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", 
	"Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", 
	"Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", 
	"Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", 
	"Zac Mitton"] 
	
	def group_gen(Array)
	    	random = array.shuffle
	      group = Array.new
	       i = 0
	      while random.length > 3
		      group[i]= random.take(4)
		      random = random.drop(4)
		      i += 1
	end
end

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


