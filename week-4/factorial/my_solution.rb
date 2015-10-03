# Calculate a Factorial

# I worked on this challenge with Eunice Do.


# Your Solution Below

def factorial(number)
  y = number - 1
  x = number
  until y == 0 do
    x *= y
    y -= 1
  end
  return x
end