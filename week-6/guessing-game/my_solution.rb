=begin
Build a simple guessing game


I worked on this challenge by myself.
I spent 1 hours on this challenge.


PSEUDOCODE:

-Define a class called guessing game which initializes an integer as an answer.
  -Make a method called guess that calls for an integer argument as a guess.
    -If the guess is greater than the answer, return :high 
    -If the guess is greater than the answer, return :low
    -If the guess is equal to the answer, return :correct
  -Make a method called solved? which returns true if the guess is equal to the answer and
   false if not.


INITIAL SOLUTION:

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @guess = guess
    if guess > @answer then return :high end
    if guess < @answer then return :low end 
    if guess == @answer then return :correct end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end

=end

#REFACTORED SOLUTION

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @guess = guess
    if guess > @answer then return :high end
    if guess < @answer then return :low end 
    if guess == @answer then return :correct end
  end

  def solved?
    @guess == @answer ? true : false
  end
end

=begin

REFLECTION:

How do instance variables and methods represent the characteristics and behaviors
(actions) of a real-world object?

Just like real world objects, methods fall under a hierarchy of categorization. Within 
the hierarchy are shared characteristics between objects and characteristics that are
unique to seperate objects.

For instance - A truck and a car are two different objects but can both be classified
as vehicles. Both cars and trucks have tires and for this example, those would both be
 instance variables. To put it graphically -

Class: Vehicle
	Instance Variable: Tires
	Method: Truck
		Instance Variable: Tires
		Local Variable: Trailer
	Method: Car
		Instnace Variable: Tires
		Local Variable: Sun Roof


When should you use instance variables? What do they do for you?

Instance variables are used when you want to create a variable that is accessible throughout
an entire class. They can also be defined during the initialization of a class. This way,
each object that falls under the class can access the instance variable.


Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?

Flow control is a means of executing pieces of code based on a conditional statement.
I hit a wall when I first started this because I tried to use a case statemtent within my
#guess method. Afterward I switched it to 3 if/then statments. I also used a one line 
ternary operator on this challenge.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols cannot be changed. This saves Ruby time when referencing the symbols since it doesn't need
to take changability into consideration when processing them. This makes them run faster. Each symbol,
however is stored in memory so using large amounts of symbols in not recommended.


=end