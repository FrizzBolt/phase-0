# I worked on this challenge with Danielle Cameron
# This challenge took me .5 hours.

# Pseudocode

#Make a new sequence that calculates the fibonacci sequence number at any given inputted position
#Iterate up that sequence until the inputted number is reached and store the results
#Compare the stored result to the number inputted
#IF the number inputted is equal to a stored fibonacci number
#Then return true. Otherwise, return false.

# Initial Solution

def is_fibonacci?(num)
  array = []
  x = 1
  def sequencer(seq)
    if seq == 0 || seq == 1
      seq
    else
      sequencer(seq-1) + sequencer(seq-2)
    end
  end
  while x < num+1
    array << sequencer(x)
    x += 1
  end
  array.each do |y|
    if num == y
      return true
    end
  end
  return false
end


# Refactored Solution


def is_fibonacci?(num)
  array = []
  x = 1
  
  #Calculates the number at the given position within fib sequence
  def sequencer(seq)
    if seq == 0 || seq == 1
      seq
    else
      sequencer(seq-1) + sequencer(seq-2)
    end
  end
  
  #Pushes sequence up until the number into the array
  while x < num+1
    array << sequencer(x)
    x += 1
  end
  
  array.each do |y|
    if num == y
      return true
    end
  end
  
  return false
  
end