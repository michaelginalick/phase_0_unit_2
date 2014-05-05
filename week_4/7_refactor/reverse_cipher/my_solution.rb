# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? Converts the environment variables into an array of names and value arrays
# 2. How does the rotate method work? What does it work on? Returns a new array by rotating self so that the 
                                      #element at count is the first element of the new array. it works on the alphabet.zip
                                      # method so it returns both the original letter and the rotated letter
# 3. What is `each_char` doing? passes each character in the original_sentence array to the block
# 4. What does `sample` do? Choose a random element or n random elements from the array.
# 5. Are there any other methods you want to understand better? the zip and rotate methods. Also, << is something I see alot, but don't fully understand 
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? It's less code, but more complicated to follow. It would be 
     # harded to debug.
# 7. Is this good code? What makes it good? What makes it bad? This is good code due to it being very concise, but bad code
    # because it needs notes that tell the reader what it is doing


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No, all the letters are the same but symbols are different
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

