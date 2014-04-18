# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s
    if @card_num.length != 16
      raise ArgumentError
    end
  end

  def check_card
    nums = @card_num.split(//).reverse.map {|num| num.to_i}
    doubled = []
    undoubled = []
    nums.each_with_index do |num, i|
      if i.odd?
        doubled << num * 2
      else
        undoubled << num
      end
    end
    new_doubled = doubled.join.to_i.to_s.split(//).map {|num| num.to_i}
    sum = new_doubled.inject(:+) + undoubled.inject(:+)

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end



# Refactored Solution
class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s
    if @card_num.length != 16
      raise ArgumentError
    end
  end

  def check_card
    nums = @card_num.split(//).map {|num| num.to_i}
    doubled = []
    nums.each_with_index do |num, i|
      if i.odd?
        doubled << num*2
      else
        doubled << num
      end
    end
    new_doubled = doubled.join.split(//).map {|num| num.to_i}
    sum = new_doubled.inject(:+)

    return sum % 10 == 0
  end
end


# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed" unless yield
end
card = CreditCard.new(4408041234567892)
assert{ card.check_card == false }
card = CreditCard.new(4408041234567893)    
assert{ card.check_card == false }





# Reflection 