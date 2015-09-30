# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should
# greet the person using their full name.

puts "Hey there! What's your first name?"
first_name = gets.chomp
puts "That's definitely... a name... I think. What's your last name?"
last_name = gets.chomp
puts "Oh lovely! You're name is #{first_name} #{last_name}. Yikes."

# Bigger, better favorite number: Write a program that asks for a person's favorite number.
# Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What's your favorite number? I know you have one."
fav_num = gets.chomp
better_num = fav_num.to_i + 1
puts "Oh really? That's all well and good and all, but I hear #{better_num} is better"

=begin

	4.3 Links:
https://github.com/FrizzBolt/phase-0/tree/master/week-4/math/my_solution.rb
https://github.com/FrizzBolt/phase-0/tree/master/week-4/address/my_solution.rb

	4.3 Reflection:


How do you define a local variable?

Local variables are defined by simply tying them at the beginning of a line:

>variable_name = variable_equivalent_syntax

Local variables start with a lowercase letter or underscore(_).


How do you define a method?

You can define a method with the following syntax:
>def your_method_name
>   method behavior
>end

Method names can only start with a lowercase letter and can contain punctuation marks and uppercase letters.


What is the difference between a local variable and a method?

A method takes one or more arguments which can be altered externally from the method. This allows the
user to create a function that can be reused and called upon proceeding a variable if necessary. 
Methods are not allocated in memory.

Conversely, a variable does not take arguments and is allocated to the memory stack.


How do you run a ruby program from the command line?

Running a Ruby program from the command line is easy. Simply type:
> ruby your_ruby_program.rb

How do you run an RSpec file from the command line?

Runnin RSpec is similar to running Ruby. Type:
> rspec your_rspec_program.rb


What was confusing about this material? What made sense?

Most of this was pretty easy for me. Describing the difference between a local variable and a 
method was surprisingly difficult. I think I should study that difference so that I can explain 
and understand it better.
	

=end