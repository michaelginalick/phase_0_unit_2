# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution




# 3. Refactored Solution

require_relative "my_solution"

def mode(array)
  seen = Hash.new(0)
  max = 0
  max_elems = []
  array.each do |value|
    seen[value] += 1
    if seen[value] > max
      max = seen[value]
      max_elems = [value]
    elsif seen[value] == max
      max_elems << value
    end
    end
     max_elems
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
