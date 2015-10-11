
=begin


Numbers to Commas Solo Challenge

I spent [2.5] hours on this challenge.


PSEUDOCODE:

Input: An integer
Output: The same integer formatted into a string with commas in appropriate places
Steps:
-Create an variable and set it to equal 0
-Convert the integer into a string.

UNTIL - The new variable is smaller than the number length of the string
	-Iterate backward through the number inserting a comma every fourth position.
	-Subtract 4 from the variable.

-Return the number



INITIAL SOLUTION:

def separate_comma(integer)
  inx = -1
  integer = integer.to_s
  integer.reverse!
  until inx > integer.length - 4
    inx += 4
    integer.insert(inx, ",")
  end
  integer.chop
  return integer.reverse
end

=end

CLEANLY REFACTORED SOLUTION:

def separate_comma(integer)
  inx = 0
  number = integer.to_s
  until inx < -number.length + 4
    inx -= 4
    number.insert(inx, ",")
  end
  return number
end

=begin

CONDENSED REFACTORED SOLUTION (still works):

def separate_comma(integer)
  inx = 0
  number = integer.to_s
  until inx < -number.length + 4; inx -= 4; number.insert(inx, ",") end
  return number
end



REFLECTION:

What was your process for breaking the problem down? What different approaches
did you consider?

I almost had it right on the first try, but I wasn't reading over until conditional carefully enough
and I kept hitting a wall. After a while, I gave up and decided to try reversing the string first.
Once I solved that, I went back to my original solution and found the problem. That took a few
lines off and made it look nice.


Was your pseudocode effective in helping you build a successful initial solution?

Yes! I mean it was basically right the first time, but the actual coding portion hit a wall
since I'd never backward-iterated through a string before and it was tougher than I thought it would
be. My pseudocode looked good, but the code didn't necessarily turn out nice on the first try.


What Ruby method(s) did you use when refactoring your solution? What difficulties 
did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I used #chop for the first time in my initial solution which was new to me. The #insert method was also
super handy when iterating through strings and inserting the commas at the index. I tried using a shovel
operator my first time and Ruby wasn't having it.


How did you initially iterate through the data structure?

I used an until loop. I first tried inserting the commas with a shovel operator and setting my inx variable
to the index where I wanted to insert it. I thought it would work, but it didn't. The #insert method ended
up being a game-changer here.


Do you feel your refactored solution is more readable than your initial solution? Why?

Definitely. My initial solution was just something I put together to try and understand how to debug what
eventually became my refactored solution. I went for the MVP first and then suddenly my buggy initial code
made sense which was really serendipitous.

=end