# U2.W4: Cipher Challenge


# I worked on this challenge [with: Scott Silveus].



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message) # define a method taking one argument
  input = coded_message.downcase.split("") # make string lowercase then make each character an element in an array
  decoded_sentence = [] # declare empty array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e",  # This whole thing is a hash declaring the cipher
            "j" => "f",
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
            
  input.each do |x| # cycle through each element of input array
    found_match = false  # You need to assume that there is no match in the cipher until you find a match.  
    cipher.each_key do |y| # cycle through each key in the cipher
      if x == y  # x is from initial input array, i.e. a letter in the coded_message, y is from key in cipher and will be used to decode
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] # decodes input letter and adds it to the decoded array
        found_match = true # We found a match!  Therefore lines 63 won't be executed.
        break  # Once you find the key in the cipher you don't need to keep looking for it.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #It is checking the input for spaces. 
        decoded_sentence << " " # add a space to the decoded sentence
        found_match = true # We found a match!  Therefore lines 63 won't be executed.
        break # Stop search 
      elsif (0..9).to_a.include?(x) #All ten digits into an array as distinct elements and then check if character from the coded message is one of the digits
        decoded_sentence << x #Add number to decoded sentence
        found_match = true # We found a match!  Therefore lines 63 won't be executed.
        break #Stop Search
      end 
    end
    if not found_match  # If we have checked and not found a key for the input character
      decoded_sentence << x # Add input character to decoded sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") # change value of decoded sentence, an array, into a string
 
  if decoded_sentence.match(/\d+/) # are there any numbers in decoded sentence?
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # find numbers in string, change to integer, then divide by 100, and replaces found number with divided number
  end  
  return decoded_sentence # returns decoded message as a string!  
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # make string lowercase then make each character an element in an array
  decoded_sentence = [] # declare empty array
  alphabet = ("a".."z").to_a
  cipher = Hash.new()
  alphabet.each_index{ |i| cipher[alphabet[(i + 4) % 26]] = alphabet[i]}
  
  
  input.each do |coded| 
    found_match = false   
    cipher.each_key do |decoder| 
      if coded == decoder  
        decoded_sentence << cipher[decoder] 
        found_match = true 
        break  
      elsif coded == "@" || coded == "#" || coded == "$" || coded == "%"|| coded == "^" || coded == "&"|| coded =="*" 
        decoded_sentence << " " 
        found_match = true 
        break 
      elsif (0..9).to_a.include?(coded)
        decoded_sentence << coded 
        found_match = true 
        break
      end 
    end
    if not found_match
      decoded_sentence << coded 
    end
  end
  decoded_sentence = decoded_sentence.join("").gsub(/\d+/) { |num| num.to_i / 100 }
 
  return decoded_sentence  
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") ==  "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
=begin
This is the first time I truly refactored code.  Initially I had some trouble understanding
certain aspects of the assignment.  For example, the questions about the test code
confused me and I'm not sure we answered them, although I think we did do what we were
supposed to do with the test code.  Also, I was initially confused by the output.
What were all the puts statements for?  I never figured that out, and we decided to delete
them during our refactor so that when we ran the code, it was much clearer if the
tests passed or failed.

Aside from not entirely understanding some of the subtler parts of the assignment,
I didn't find any aspect of it tedious.  I enjoyed both commenting on and refactoring
the code.  Scott and I had some nice moments when we were explaining stuff to each
other.  For example, I didn't understand why we had to deal with the numbers in 
two separate places in the code, and he helped me understand that.  Similarly, I
found a way to create the hash by looping (which was super exciting!).

Another thing I think we both learned is that you can create a range of letters
in ruby (and then easily convert the range to an array).

Overall, this was a great exercise and I'm pretty confident with the learning objectives.

=end

