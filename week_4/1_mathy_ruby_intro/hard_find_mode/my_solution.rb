# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# isolate each value in the array and compare it to other values in the same array. If they are equal, set to variable
# return variable with the highest value

# 2. Initial Solution




# 3. Refactored Solution

require_relative "my_solution"

def mode(array)
  count = Hash.new(0)
  array.each {|i| count[i] +=1}
  max = count.select{|k| v ===count.values.max}
  return max.keys
end


describe 'mode' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7, 5] }
  let(:array_3) { ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]}

  it "is defined" do
    defined?(mode).should eq 'method'
  end

  it "requires a single argument" do
    method(:mode).arity.should eq 1
  end

  it "returns the correct mode when mode is a unique integer" do
    mode(array_1).should eq [5]
  end

  it "returns the correct mode when mode is not a unique integer" do
    mode(array_2).should eq [5,6]
  end

  it "returns the correct mode for strings" do
    mode(array_3).should eq ["banana", "cherry"]
  end
end
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
"mode_spec.rb" 43L, 984C



# 4. Reflection 
