=begin

PSEUDOCODE:
In this challenge, you'll want to write two methods pad and pad!. Each method accepts an array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded" with (see the example with "apple" below).

If the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.


INITIAL SOLUTION:
def pad(array, min_size, value=nil)
  temp_array = array.clone
  if temp_array.length >= min_size
    return temp_array
  else
    until temp_array.length == min_size
      temp_array << value
    end
    return temp_array
  end
end


def pad!(array, min_size, value=nil)
  if array.length >= min_size
    array
  else
    until array.length == min_size
      array << value
    end
  end
  return array
end

=end

#REFACTORED SOLUTION

def pad(array, min_size, value=nil)
  temp_array = array.clone
  until temp_array.length >= min_size
    temp_array << value
  end
  return temp_array
end


def pad!(array, min_size, value=nil)
  until array.length >= min_size
    array << value
  end
  return array
end


=begin

REFLECTION

Were you successful in breaking the problem down into small steps?

Yes, we were. We pseudocoded using the Jeff Pine method of commenting out and breaking down each step.
The first draft of our solution literally took 20 seconds after that.


Once you had written your pseudocode, were you able to easily translate it into code? What difficulties 
and successes did you have?

As I said before, we used Jeff Pine's method of pseudocoding which is a little less plain English
and more an educated line for line breakdown of what we wanted to build. This made translation really
fast.


Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what
were the errors you encountered and what did you do to resolve them?

This one had us stumped for a while. Our solution looked perfect to us but it wasn't running. After about a half hour
of testing and tweaking things, we figured out an initial solution. Finding the #clone method was a our
biggest obstacle. We were stuck on using #replace which only works on strings.


When you refactored, did you find any existing methods in Ruby to clean up your code?

At first, we refactored our logic and got everything down to just a few lines. Afterward, my partner
did a little more research and found an even shorter solution which he reverse engineered from someone
else's solution to a similar problem. This shortened each method down to one line using the #fill method
which was pretty impressive.

How readable is your solution? Did you and your pair choose descriptive variable names?

Our second to last refactor is probably the most readable piece of code for a beginner. It's really
simple and elegant. After refactoring we used the #fill method which is kind of an add method to implement.
If someone didn't know what it did, the code wouldn't really make much sense.

What is the difference between destructive and non-destructive methods in your own words?

Non-destructive methods preserve the original object in the system without altering every future instance of them.
Destructive methods permanently alter the object that is being acted upon by the method.

=end