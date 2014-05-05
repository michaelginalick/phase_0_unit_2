# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  # the split("") Splits the given string into a directory and a file component and returns them in a two-element array
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # the pros of using a hash will be that it will cut down on the lines of code. You could evaluate
            "h" => "d",   # each value and add four to it to return what the value represents. The cons will be that you  
            "i" => "e",   # would need to create an array that holds the entire alphabet. Also, if the code changes, you 
            "j" => "f",   # would need to tweak the algorithm 
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? It is taking each value in input and placing it in x
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? If it's true, all
                          # the values would be considered to be equal and you would need to rewrite the code for when they
                          # are not equal.
    cipher.each_key do |y| # What is #each_key doing here? for each x which is the key, do y what is the value
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
                  # it's comparing the key to the value. X is the first value, y is the second. Those variables are 
                  # what is contained in cipher. The key and the value
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?  Terminates the most internal loop. If they equal, do not execute the rest of the 
               # logic
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
                # if the key equals any of these values, put them in the end of the array, decoded_sentence.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It returns the values 0,1,2,
                                    # 3,4,5,6,7,8,9
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? it is looking to see if any of the values match any values in decoded_sentence
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. This is matching 1000000. It stars with
                                    # the first digit it finds and returns all consecutive numerical digits.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning? can somebody just get me 100 bags of cool ranch doritos?   
end

# Your Refactored Solution





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 
