# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with Carl Krause.


# 2. Pseudocode
# CLASS BoggleBoard

    # DEFINE initialize with one argument called board
    #   @board = board
    # END

     # DEFINE method create_word; with one argument--and an argument which has unspecified number of inputs
        # It is iterating over @board and accessing each element at the coordinates
        # Returns character at coordinates, joined into a single string with no spaces between characters
    # END
    
    # DEFINE method called get_col which takes argument col
            # DEFINE column as a new array
            # iterate over each element in @board
                # for each element, add the col element to the column array
            # END iteration
            # RETURN column array
        # END method
    
    # DEFINE a method get_row with a single argument, row
    #   RETURN everything at row number as an array
    # END
    
    # DEFINE a method called diagonal which takes two arrays, p1 and p2
        # DEFINE m as (p1[1]-p2[1]) / (p1[0] - p2[0])
        # CASE m
            # when m is 1
            # when m is -1
            # else
                # throw error message
        # END case
# END class BoggleBoard



# 3. Initial Solution
class BoggleBoard
	attr_reader :board
    def initialize(board)
        @board = board
    end
    
    def create_word(*coords)
        coords.map { |coord| @board[coord[0]][coord[1]]}.join("")
    end
    
    def get_row(row)
        @board[row]
    end
    
    def get_col(col)
        @column = Array.new
        @board.each {|row| @column << row[col]}
        return @column
    end

    def get_diagonal(point1,point2)
        m = (point1[1] - point2[1]) / (point1[0] - point2[0]).to_f
        diag = Array.new
        case m
        when 1
            until point1[0] == 0 || point1[1] == 0
                point1[0] -= 1
                point1[1] -= 1
            end
            until point1[1] > 3 || point1[0] > 3
            	diag << @board[point1[0]][point1[1]]
            	point1[0] += 1
            	point1[1] += 1
            end
        when -1
            until point1[0] == 0 || point1[1] == 3
                point1[0] -= 1
                point1[1] += 1
            end
            until point1[1] < 0 || point1[0] > 3
            	diag << @board[point1[0]][point1[1]]
            	point1[0] += 1
            	point1[1] -= 1
            end
        else
            return "There is no diagonal with these two points"
        end
        return diag
    end
end
 

#4. Refactored Solution
class BoggleBoard
	attr_reader :board
    def initialize(board)
        @board = board
    end
    
    def create_word(*coords)
        coords.map { |coord| @board[coord[0]][coord[1]]}.join
    end
    
    def get_row(row)
        @board[row]
    end
    
    def get_col(col)
        column = Array.new
        @board.each {|row| column << row[col]}
        return column
    end

    def get_diagonal(point1,point2)
        m = (point1[1] - point2[1]) / (point1[0] - point2[0]).to_f
        diag = Array.new
        case m
        when 1
        	min = point1.min
        	point = point1.map{|coord| coord - min}
            until point[1] > 3 || point[0] > 3
            	diag << @board[point[0]][point[1]]
            	point[0] += 1
            	point[1] += 1
            end
        when -1
        	min = [point1[0], 3 - point1[1]].min
        	point = [point1[0] - min, point1[1] + min]
            until point[0] >3  || point[1] < 0
            	diag << @board[point[0]][point[1]]
            	point[0] += 1
            	point[1] -= 1
            end
            diag
        else
            return "There is no diagonal that contains these two points."
        end
        return diag
    end
end
 
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
puts boggle_board.board[3][2]
# implement tests for each of the methods here:
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
puts boggle_board.get_row(2) == ["e", "c", "l", "r"]
puts boggle_board.get_col(2) == ["a", "d", "l", "k"]
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  == "code"
puts boggle_board.create_word([0,1], [0,2], [1,2])  == "rad"
puts boggle_board.get_row(1) ==  ["i", "o", "d", "t"]
puts boggle_board.get_row(1).class == Array
puts boggle_board.get_col(1) == ["r", "o", "c", "a"]
puts boggle_board.get_col(3) == ["e", "t", "r", "e"]
puts boggle_board.get_diagonal([1,2], [2,3]) == ["r", "d", "r"]
puts boggle_board.get_diagonal([0,1], [2,3]) == ["r", "d", "r"]
puts boggle_board.get_diagonal([3,0], [2,1]) == ["e", "d", "c", "t"]
puts boggle_board.get_diagonal([3,2], [2,3]) == ["r", "k"]
puts boggle_board.get_diagonal([3,1], [2,2]) == ["t", "l", "a"]
puts boggle_board.get_diagonal([1,0], [0,1]) == ["r", "i"]
for i in (0..3)
    puts boggle_board.get_row(i).join
    puts boggle_board.get_col(i).join
end


# 5. Reflection 
=begin
Carl and I paired on the first part of this assignment, which was pretty straightforward.
Last week, we worked together on the initial Boggle challenge and decided to use
classes then, so we mostly just had to copy-paste for this week's assignment.  We 
also spent some time updated our driver tests.

We then jumped into the bonus and found it to be much more challenging than the
get_row or get_col methods.  It was instructive to think through how to write a
get_diagonal method.  Eventually, I came up with two different ways to do this.
One is in my original solution and the other is in my refactor.  I think the code
in the refactor is slightly more efficient, but it also took me a lot longer to
make work (I made a lot of off-by-one errors and the like).  I imagine it's also
a bit harder for another person to understand--personally, I'd really have to think
about this code and work through a few examples to figure out what's going on.  At
some points, this got a bit tedious but I really wanted to figure out how to do it,
so I stuck with it.  In retrospect, I'm not sure if it was worth the extra time or
not.

This was a good exercise to pull together a lot of the loops and logical statements
we've been working with.  I feel confident with the learning competencies, but 
they are not really what I focused on during the challenge.  Nested arrays seem
very useful.  I am also feeling more confident making decisions about when to 
define a variable as local versus instance, although I'm sure my opinion of when
to use each will continue to evolve a bit.
	
=end
