# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution


def get_grade(array)

   length =  array.length
   sum =  array.inject{|element,result| element + result}
    get_grade =  (sum/length)
     case get_grade
      when 90..100
      "A"
      when 80..90
       "B"
      when 70..80
       "C"
      when 60..70
       "D"
      when 0..60
       "F"
      else
     "Error"
      end

end


# 3. Refactored Solution



# 4. Reflection 
