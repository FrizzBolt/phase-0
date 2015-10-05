# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Total sum of numbers in the array.
# Create a variable and set it equal to 0.
# Iterate over the array adding each number to the variable and return
# the variable

# 1. total initial solution

def total(array)
	count = 0
	array.each do |num|
		count += num
	end
	p count
end

# 3. total refactored solution

def total(array)
puts array.reduce(:+)
end

# 4. sentence_maker pseudocode
# Input: Array of Strings
# Output: Capitalized sentence made from concatenated elements
# in string array
# Concatenate the array into one string.
# Capitalize the first letter in the string.
# Put spaces in between each string
# Replace the extra space at the end of the string with a period.

# 5. sentence_maker initial solution

def sentence_maker(array)
  y = array.join " "
  p y.capitalize! + "."
end

# 6. sentence_maker refactored solution

The answer in 5 was as short as we could make it!
