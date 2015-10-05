# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  sum = 0
  until number == 0
    multiple = number * (number-1)
    sum = sum + multiple 
    number -= 1
    return sum
  end
  
end

puts "#{factorial(5)}"