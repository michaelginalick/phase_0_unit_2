# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution


# Refactored Solution

 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [0,1], [0,2], [1,2])
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  puts create_word(boggle_board, [0,1], [0,2], [1,2])

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution


# Refactored Solution
    @boggle_board = boggle_board
def get_row(row)
     @boggle_board[row]
end
  
# DRIVER TESTS GO BELOW THIS LINE

 get_row(2)

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_col(col)
      @boggle_board[col]
end                

# Refactored Solution

class Boggle
    def initialize(column)
        @column = column
        @boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    end
    
    def get_column
        new_array = []
        @boggle_board.each do |row|
            new_array.push(row[@column])
        end
        return new_array
    end
end
# DRIVER TESTS GO BELOW THIS LINE

put get_col(3)
put get_col(1)
put get_col(2)
# Reflection 
