# U2.W4: Add it up!

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


def total(array)
  array.inject{|value, result| value + result}
end


def sentence_maker(words)
    words.join(" ").capitalize + "."
end


describe 'total' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }

  it "is defined as a method" do
    defined?(total).should eq 'method'
  end

  it "requires a single argument" do
    method(:total).arity.should eq 1
  end

  it "returns the correct total of array 1" do
    total(array_1).should eq 27
  end

  it "returns the correct total of array 2" do
    total(array_2).should eq 43
  end
end

describe 'sentence_maker' do
  let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
  let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}

  it "is defined as a method" do
    defined?(sentence_maker).should eq 'method'
  end

  it "requires a single argument" do
    method(:sentence_maker).arity.should eq 1
  end

  it "returns the grammatically correct sentence of the first sentence" do
    sentence_maker(first_sentence).should eq "All my socks are dirty."
  end






# 4. Reflection 
