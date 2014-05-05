# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
  attr_reader :board
  
  def initialize(board)
    @board = board
  end

  def create_word(*coords)
      coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end
 
  def get_row(row)
    @board[row]
  end

  def get_col(col)
    @board.map{|row| row[col]}
  end
  
  def get_diagonal(coord1,cooord2)
      @board[coord1]
      @board[cooord2]
      
      if coord1 > 0 
 end
 end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
 def assert
  raise "Assertion failed!" unless yield
end
assert { boggle_board.get_row(1) === ["i", "o", "d", "t"] }

# 5. Reflection 
