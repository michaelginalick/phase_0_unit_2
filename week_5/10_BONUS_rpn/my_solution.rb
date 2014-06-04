# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class RPNCalculator
  def evaluate(expression)
        expression = expression.split
        operands = []
        evaluation = []

        expression.each do |x|
            case x
                when /\d/
                    evaluation.push(x.to_f)
                when "-", "/", "*", "+", "**"
                    operands = evaluation.pop(2)
                    evaluation.push(operands[0].send(x, operands[1]))
            end
        end
        puts evaluation
    end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

calc = RPNCalculator.new
calc.evaluate('1 2 +')   # => 3
calc.evaluate('2 5 *')   # => 10
calc.evaluate('50 20 -') # => 30
calc.evaluate('70 10 4 + 5 * -') 





# 5. Reflection 
