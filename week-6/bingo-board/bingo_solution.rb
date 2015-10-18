# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   -Create an array with the letters from b-i-n-g-o in it as separate indexes and pull a random letter
#   -Generate a random number between 1-100
# # Check the called column for the number called.
#   -Transpose the board so that columns are turned into rows.
# # If the number is in the column, replace with an 'x'
#   -If the called column method returns true, replace it with an 'x'
# # Display a column to the console
#   -Display all of the internal arrays with the corresponding index to the correct guess
# # Display the board to the console (prettily)
#   -Puts the board and add this title string as the first line: "==BINGO=="

#INITIAL SOLUTION

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    puts "The number is:"
    @letters = ["B","I","N","G","O"]
    print @letter_call = @letters.sample
    puts @num_call = 1 + rand(100)
  end

  def column_check
    @columns = @bingo_board.transpose
    @columns[@letters.index(@letter_call)].map! do |call|
      if call == @num_call
        call = "X"
      else call
      end
    end
    return @columns.transpose
  end

  def display
    puts "=B   I   N   G   O="
    @columns.each do |col|
      p col
    end
  end

end
=end

#REFACTORED SOLUTION

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = ["B","I","N","G","O"]
    @letter_call = @letters.sample
    @num_call = 1 + rand(100)
    puts "The number is:  #{@letter_call} #{@num_call}"
    puts ""
  end

  def column_check
    @columns = @bingo_board.transpose
    @columns[@letters.index(@letter_call)].map! do |call|
      if call == @num_call
        call = "X"
      else call
      end
    end
    return @columns.transpose
  end

  def display
    puts "=B   I   N   G   O="
    @columns.each { |col| p col.join(", ") }
  end

end

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]


# new_game = BingoBoard.new(board)
# new_game.call
# new_game.column_check
# new_game.display 


=begin


REFLECTION:

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I used a different style of pseudocoding for this challenge, basically just writing the step by step
outline. It wasn't hard to pseudocode. Translating was the code itself was harder.


What are the benefits of using a class for this challenge?

It was a useful tool for organizing and separating information. Doing this in one method would have been
a nightmare and using a class just makes the whole thing more modular.


How can you access coordinates in a nested array?

You can access the the coordinates of a nested array by adding another index within it at the index
of the nexted array. The syntax for this works like this:

Here's my array.
array = [["first"], ["second", "third"]]

If I wanted to access the "third" stirng within the elemen, I would need to access the index 1 of the 
array that's in the position of index 1 on the original array. So it would end up looking like this:

array[1][1] = "third"


What methods did you use to access and modify the array?

I used a #transpose method on this to make accessing the number inside the method easier. The #transpose
method takes in a 2d-array assuming that its comprised of rows and columns and translates rows to columns
and vice versa. That way when I needed to iterate by column, all I had to do was #transpose the board array
and all of the columns were neatly in their own arrays.


How did you determine what should be an instance variable versus a local variable?

Anything that needed to be passed through methods was an instance variable. Any variable that could be confined
to one method was a local variable.

What do you feel is most improved in your refactored solution?

I made the output look prettier. I also snipped a few redundant lines. I also made a method that that detects
when you win at bingo over rows, columns, and diagonal and have it saved elsewhere.

=end

