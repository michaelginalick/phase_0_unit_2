# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
      def initialize(creditCardValidation)
          @creditCardValidation        
          unless creditCardValidation.to_s.length == 16
          raise ArguementError.new("The credit card number lenght must be 16")
      end    
end

def check_card
		cc = @creditCardValidation.to_s.split("")
		credit_card_doubled = []

		cc.each_with_index do |x, i|
			if i % 2 == 0
				number_times_two = x.to_i*2
				number_times_two.to_s.split(//).each { |i| credit_card_doubled << i.to_i } 
			elsif i % 2 == 1
				credit_card_doubled << x.to_i
			end
		end

		credit_card_summed = credit_card_doubled.reduce(:+)

		credit_card_summed % 10 == 0 ? true : false

	end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
