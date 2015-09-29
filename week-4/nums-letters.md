###What does 'puts' do?

The puts command prints the output. It then creates a new line and returns nil.

Ex:
	> puts "Hallo."
	>(Will Return) Hallo.
	>

###What is an integer? What is a float?

An integer is a number that does not contain a fraction or decimal place that can be positive, negative, or 0. A float is a number that contains a decimal place.

###What is the difference between float and 
integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division will subtract any remaining decimal places when the value is returned.

Ex:
	>puts 9 / 5
	>(will return) 1

Float division will return the answer to a maximum of 15 decimal places before rounding up to the 15th place.

Ex:
	>puts 9.0 / 5.0
	>(will return) 1.8

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby will return integers if fed integers. It will also return floats if fed floats. So with this in mind, adding, subtracting, multiplying, and divinding numbers act exactly as one would expect them to, with integer division as the only exception. When dividing integers, the number returned is rounded down. A modulus returns the remainder.

###What are strings? Why and when would you use them?

Strings are groups of letters that have been put inbetween quotation marks or half quotation marks. Strings are used when a group of letters needs to be displayed, added, subtracted, or converted into another form. 

###What are local variables? Why and when would you use them?

Local variables are essentially pointers that can be assigned to values or snippets of code that will be stored in the local computer's memory. A variable could something as simple as 'hello' or something more complicated like 42.to_s + " hello."

###How was this challenge? Did you get a good review of some of the basics?

This challenge was super easy. I'm looking forward to delving more into R-Spec tonight to get a more in-depth look at how that works.