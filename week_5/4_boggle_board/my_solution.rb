# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge with Carl Krause.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#   Inputs: Array of arrays with single character elements ("a".."z")
#   Output: single string composed of characters taken from arrays

#   Part 1:
    # DEFINE method create_word; with two arguments--board, and one of which has unspecified number of inputs
    # It is iterating over board array and accessing each element at the coordinates
    # Returns character at coordinates, joined into a single string with no spaces between characters
    # END
    
    
# Initial Solution
=begin
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code" 
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?
=end

# Refactored Solution
class Boggle
    def initialize(board)
        @board = board
    end
    def create_word(*coords)
        coords.map { |coord| @board[coord[0]][coord[1]]}.join("")
    end
end


# DRIVER TESTS GO BELOW THIS LINE
boggle_board = Boggle.new([["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]])
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  == "code"
puts boggle_board.create_word([0,1], [0,2], [1,2])  == "rad"

# Reflection 
=begin
I worked with Carl on this challenge, and part 1 is the code that changed the most.
Initially, we were a little confused about what we were supposed to be doing
in part 1 since the assignent gave us the code.  Eventually we decided to go 
through the code line by line and figure out what was going on.  Then we wrote
driver tests.

Even though this was, in some ways, the simplest part of the challenge, we spent
some time discussing and researching the splat operator, which allows a method to 
take any number of arguments and puts them into an array.  This is something we 
got a bit stuck on but ultimately was an important learning moment.

As you can see from the refactor, even though we were given the code for part 1,
we completely refactored it (after doing parts 2 and 3) to be consistent with 
parts 2 and 3, where we thought to define the class Boggle.
    
=end
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# CLASS Boggle
# DEFINE initialize with one argument called board
#   @board = board
# END
# DEFINE a method get_row with a single argument, row
#   RETURN everything at row number as an array
# END

# Initial Solution
class Boggle
    def initialize(board)
        @board = board
    end

    def get_row(row)
        return @board[row]
    end
end



# Refactored Solution
class Boggle
    def get_row(row)
        @board[row]
    end
end


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board.get_row(1) ==  ["i", "o", "d", "t"]
puts boggle_board.get_row(1).class == Array

# Reflection 
=begin
We spent the most time discussing if it was best to use a class here or not.
It bothered both of us that, according to the examples given in the assignment,
we would have to hard-code boggle_board into the method.  Doing that doesn't
seem very general.  So we decided to define a boggle class.

In retrospect, we could have just added a second argument "board"  to the #get_row
method and not put it inside of a class (like the initial solution for part 1).
This would also have addressed our concern, but without having to define a class.
I'm not sure if this would have been better or not.  I don't feel particularly 
confident knowing when it is and isn't appropriate to use classes.  They seem 
so useful, but perhaps there are reasons to avoid them in certain situations.

The method itself was pretty straightforward to write.   
=end


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Input: column number
# Output: all of the characters in that column as an array

# STEPS:
    # Open class Boggle
    # DEFINE method called get_col which takes argument col
        # DEFINE column as a new array
        # iterate over each element in @board
            # for each element, add the col element to the column array
        # END iteration
        # RETURN column array
    # END method, close class Boggle
    
    # 

# Initial Solution
class Boggle
    def get_col(col)
        @column = Array.new
        @board.each {|row| @column << row[col]}
        return @column
    end
end



# Refactored Solution
# The initial solution is D.R.Y. and the variables are descriptive, so overall
# the code is concise and readable.


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board.get_col(1) == ["r", "o", "c", "a"]
puts boggle_board.get_col(3) == ["e", "t", "r", "e"]

# Reflection
=begin
At this point in the challenge, we had already decided to define our methods
inside the invented Boggle class, so we could really focus on the #get_col
method itself.  It was a bit more challenging than the #get_row method, but
still pretty managable.  At some point, we lost track of what we were trying
to return and basically returned a "word" (a #join(ed) version of the @column
array) instead of an array.  Our driver tests were key here -- we were able to 
immediately figure out what had gone wrong and fix it.

I am still not super confident I understand when to use instance variables
versus local variables and need to do some more research on it.  I understand
the difference between the two but haven't figured out when one is more 
appropriate than the other.  Throughout this exercise, we used instance variables.

=end 