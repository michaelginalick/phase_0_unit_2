# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Michael Ginalick
# 2) Jared Chevalier

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
      raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)

  
     fav_food_qty = my_list.values_at(fav_food)[0]

  if  num_of_people % fav_food_qty == 0 
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    
  else
  
    while num_of_people > 0
    
    
      if num_of_people / my_list["pie"] > 0 && fav_food == "pie"  #41/8
         pie_qty = num_of_people / my_list["pie"]    #=5.1 
         num_of_people = num_of_people % my_list["pie"] # 1
    
      elsif  num_of_people / my_list["cake"] > 0 && fav_food == "cake"
             cake_qty = num_of_people / my_list["cake"]
             num_of_people = num_of_people % my_list["cake"]
        
        # 
        
      else
        cookie_qty = num_of_people #1
        num_of_people = 0
      end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
  end

 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.

p bakery_num(24, "cake") == "You need to make 4 cake(s)." # works
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 