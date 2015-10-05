# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
end

def largest_integer(list_of_nums)
  y = 0
  smallnum =  -999999999999999999
    list_of_nums.each do |x|
      if x > smallnum
        smallnum = x
        y = x
      end
    end
  if list_of_nums == []
    return nil
  else
    return y
  end
end