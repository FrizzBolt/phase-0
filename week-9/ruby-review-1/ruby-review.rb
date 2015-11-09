# I worked on this challenge with Danielle Cameron.
# This challenge took me 1 hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
  new_array = []
  array.each do |x|
    if x % 3 == 0 && x % 5 == 0
      new_array << "FizzBuzz"
    elsif x % 3 == 0
      new_array << "Fizz"
    elsif x % 5 == 0
      new_array << "Buzz"
    else
      new_array << x
    end
  end
  new_array
end



# Refactored Solution

def super_fizzbuzz(array)
  array.map {|x|
    if x % 15 == 0
      "FizzBuzz"
    elsif x % 3 == 0
      "Fizz"
    elsif x % 5 == 0
      "Buzz"
    else
      x
    end
      }
end



=begin
# Reflection

# What concepts did you review in this challenge?

With the fibonacci problem, I learned about recursion which is kind of an odd topic to get your head around.
 Otherwise, I was just reviewing the basics.


# What is still confusing to you about Ruby?

Inheritance is still confusing - composition less so. I feel like the documentation of challenges becomes 
more sparse in codeing as the topics become more advanced and that can make more advanced topics even more difficult.


# What are you going to study to get more prepared for Phase 1?

I will be spending a lot of time in Javascript doing DOM work. I feel like this is key in understanding the
 underlying limitations of the language.

=end