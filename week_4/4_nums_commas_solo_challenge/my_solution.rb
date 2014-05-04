# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution




# 3. Refactored Solution

def separate_comma(int)
  array = int.to_s.split("")
  new_array=[]
  if array.length < 4
    x = array.join("")
  end
  index = 1
   while index < array.length
       if array.length > 4
       array.insert(index,",")
     end
       index = index +4
         if index >= array.length
           array.join("")
         end
     end
  
# 4. Reflection 
