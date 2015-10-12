=begin

Die Class 2: Arbitrary Symbols


I worked on this challenge by myself.
I spent 0.5 hours on this challenge.

PSEUDOCODE:

Input: An array
Output: A class which can return a random element of the array and the number
of sides in the array by calling different methods.
-Create a class called Die
	-Create a method called Initialize
		-Initialize an instance variable for number of sides that is equal to the length
		of array
		-Initialize an instance variable which is equal to the array
		-Define an ArgumentError in	the event that the number of sides is less than 0.
	-Create a method called sides which returns the number of sides
	-Create a method which returns one random element of the array.


=end

class Die

  def initialize(array)
    @num_sides = array.length
    @array = array
    unless sides > 0
      raise ArgumentError.new("Number of sides cannot be less than 0")
    end
  end

  def sides
    @num_sides
  end

  def roll
    @array.sample
  end

end

=begin

REFLECTION:

What were the main differences between this die class and the last one you created in terms
of implementation? Did you need to change much logic to get this to work?

I honestly didn't change too much since the last die class. The only difference in the final
that I had to create another instance variable for the inputed array and the argument error
was different. It was still good class practice though.


What does this exercise teach you about making code that is easily changeable or modifiable? 

Legibility is key when writing code. If you can easily locate the bit of code that you want to modify,
then you'll be able to modify it that much faster. If everything's easy to read and your variables
are clearly labeled, then you're practicing good code.


What new methods did you learn when working on this challenge, if any?

I got to use the #sample method which was a good refresher in how that works. The #sample method
simply returns a random element in an array. Otherwise, I just got some more work with instance variables.


What concepts about classes were you able to solidify in this challenge?

Working with instance variables is good since I'm never sure when to use them. I got an error pretty
early on in the challenge that had me confused because I'd referenced a local variable in a different
method than the one I defined it in. I also mucked up the argument error statement in the beginning. It's
good to get practice defining those. I also got more practice calling methods on my class for test
purposes.

=end