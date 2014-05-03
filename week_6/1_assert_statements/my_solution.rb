# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
 #the method assert is defined but accepts no arguements. The logic says fail unless yield.
 # name is declared as bettysue and we are passing the method assert name two seperate values.
 # bettysue passes because name = bettysue, billybob failes because it does not

# 3. Copy your selected challenge here




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection
