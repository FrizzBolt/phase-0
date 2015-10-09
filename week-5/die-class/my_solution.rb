=begin

# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: Methods which output random dice rolls as well as returning numbers of sides.
# Steps: 

-Create a new class called Die which calles for a number of die sides as an argument
-Create an instance variable that is equivalent to the number of sides in the die.
-Create an Argument Error
-Create a new method that returns the number of sides in the die.
-Create another new method that returns a random number between one and the number of sides.

** Note: I could not further refactor my solution after creating it. I made it as short as
possible.

=end

#Solution

class Die

  def initialize(sides)
    @num_sides = sides
    unless sides > 1
      raise ArgumentError.new("Number of sides cannot be less than -1")
    end
  end

  def sides
    @num_sides
  end

  def roll
    return 1 + rand(sides)
  end

end

=begin
  
REFLECTION

What is an ArgumentError and why would you use one?

An ArgumentError is an error that can be defined in a class when the properties of an
argument are incorrect. You would use this if you want the user to only create instances
of your class that fit within certain parameters.


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

Classes were totally new to me as well as instance variables. I have also never raised an argument error
before.


What is a Ruby class?

A ruby class is one step up on the object hierarchy from an object. All objects exist under a class.
Classes can initialize values to objects upon there creation as well as confine the usage of its
contained objects to parameters.


Why would you use a Ruby class?

You would use a Ruby class when you want to define a structure under which a method or series of methods
will be run. 


What is the difference between a local variable and an instance variable?

Local variables only exist within the confines of methods and are not initialized to every object
in the class.
Instance variables are assigned to each object of the class during initialization. They exist
outside of the confines of a single method and are confined to the class.


Where can an instance variable be used?

An instance variable can be used within a class. It is typically assigned to new objects within
the initialization method of the class.

=end