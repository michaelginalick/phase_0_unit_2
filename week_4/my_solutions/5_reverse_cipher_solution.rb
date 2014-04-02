# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #defining a method that takes a string as input
    alphabet = ('a'..'z').to_a # make an array with all lowercase letters, in order from a - z, as elements
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # 1. rotate the alphabet array by 4, meaning that all elements get 
                                                          #shifted to the left by 4 (and wrap back around)
                                                    # 2. zip the alphabet array together with the rotated array.  This 
                                                        # creates an array where the first element is an array with the first elements 
                                                        # from each of the zipped arrays, the second element is an array with the second
                                                        # elements from the arrays, and so on.
                                                    # 3. Turn the array of arrays into a hash called cipher.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # defining an array containing the symbols that will code for spaces
    
    original_sentence = sentence.downcase # make the input string lowercase
    encoded_sentence = [] # define the encoded sentence as an empty array (we will add to this later)
    original_sentence.each_char do |element| # for each character in the sentence, do the following block
      if cipher.include?(element) # if the cipher hash includes the character in the sentence
        encoded_sentence << cipher[element] # add the coded character (value from the hash) to the encoded sentence array
      elsif element == ' ' # if the character in the sentence is a space
        encoded_sentence << spaces.sample # add one of the characters from the spaces array to the encoded sentence array
      else # otherwise
        encoded_sentence << element # add the character to the encoded sentence array
      end
     end
    
    return encoded_sentence.join # turn the encoded sentence array into a string
end


# Questions:
# 1. What is the .to_a method doing?
# => It's changing the list of strings into an array, where each element 
# => is one of the strings.
# 2. How does the rotate method work? What does it work on?
# => #rotate(n) takes an array and shifts the elements in the array n units 
# => to the left, wrapping any elements that "fall off" back to the end of the array.
# 3. What is `each_char` doing?
# => iterating over each character in the string
# 4. What does `sample` do?
# => choosing a random element from the array.  #sample(n) will give a new 
# => array with n elements randomly selected from the original array.
# 5. Are there any other methods you want to understand better?
# => #zip!  This seems like a super cool method.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# => Parts of it look very similar.  For example, we defined "alphabet" exactly
# => the same way (we even called it "alphabet").
# => We defined the hash differently.  We didn't know about the #rotate method, 
# => which is great.  We also didn't use #zip.  I think rotate is better than 
# => what we did, although generating our code was good from a learning perspective.
# 7. Is this good code? What makes it good? What makes it bad?
# => This seems like pretty good code to me.  It's very readable--the variables are
# => defined well and I didn't have too much trouble figuring out the logic.  The
# => only non-obvious part of the exercise was determining what methods I was unfamiliar
# => with were doing.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# nope!  the #sample method means that spaces can be translated differently.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# I enjoyed this exercise.  It was quick and not tedious.  Nothing was particularly 
# challenging, and I enjoyed looking up the methods I was unfamiliar with.  
# I think it was especially interesting since I did challenge 4 a few hours ago, 
# so the logic of that exercise is still fresh.  It also meant that I immediately 
# noticed similarities and differences between our code and this code.
#
# I am pretty confident with the learning objectives.

