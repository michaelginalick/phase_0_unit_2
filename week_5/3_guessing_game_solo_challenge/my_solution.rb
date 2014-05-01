# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution   
#Define an instance method GuessingGame#guess which takes an integer called guess as its input. 
#guess should return the symbol :high if the guess is larger than the answer, 
#:correct if the guess is equal to the answer, 
#and :low if the guess is lower than the answer.

#Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct 
#and false otherwise.

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(num)
    @num = num
    if @num > @answer
       return :high 
   else if
       @num < @answer
       return: low
       if @num == @answer
          return :true
        else
        return  :false
  end
  
  def solved?
    if @num == @answer
       return :correct
     else
       return: false
  end
  return false unless @num == @answer
     return true
end



# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @num = num
    if @num > @answer
       return :high
   else if
       @num < @answer
       return :low
       else @num == @answer
          return :correct

    end
  end
  end

  def solved?
  return false unless @num == @answer
     return true

 end
end





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
