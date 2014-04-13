
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Catherine Farkas
# 2) Caleb Rugg

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) # this is a method that takes a number and string and returns another string with the quantities of pies, cakes, and cookies
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # this defines a hash called my_list with the keys "pie", "cake", and "cookie" and corresponding values representing serving size
  
  has_fave = false # creates has_fave boolean

  my_list.each_key do |k| # iterates through each key of the list and checks to see if fav_food matches the passed in key
    if k == fav_food 
        has_fave = true # sets has_fave to true
    end
  end

  if has_fave == false # If we didn't find the favorite food in the hash
    raise ArgumentError.new("You can't make that food") # raise an error
  else # if we find the favorite food
    qty = Hash.new
    qty[fav_food] = num_of_people / my_list[fav_food]
    num_of_people = num_of_people % my_list[fav_food]

    if num_of_people == 0
      return "You need to make #{qty[fav_food]} #{fav_food}(s)."
    else
      my_list.each do |key, value|
        if key != fav_food
          qty[key] = num_of_people / value
          num_of_people = num_of_people % value
        end
      end
    end

    return "You need to make #{qty["pie"]} pie(s), #{qty["cake"]} cake(s), and #{qty["cookie"]} cookie(s)."
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 