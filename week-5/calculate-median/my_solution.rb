=begin


# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself:

PSEUDOCODE:


Input: An array
Output: The median of a sorted array.
Steps:
-Sort the array
-IF 
	-The array is even then return the index of the array that is equal to the length of the array minus two
-ELSE
	-Average the numbers of the two middle arrays and convert them to floats



=end

#INITIAL SOLUTION (Passes all tests and is only 1 line!)

def median(array)
  array.sort!.length.even? ? (array[array.length / 2].to_f + array[array.length / 2 - 1].to_f) / 2 : array[array.length / 2]
end