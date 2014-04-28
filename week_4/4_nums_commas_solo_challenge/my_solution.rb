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
    x = array
  end
  comma = 3
  while index < array.length
    if array.length == 4
        x = array.insert(1, ",")
    elsif array.length > 4
      x = array.insert(index, ",")
    end
    comma +=4
  end
  (new_array << x).join("")
end


# 4. Reflection 
