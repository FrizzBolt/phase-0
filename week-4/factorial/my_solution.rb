
# I worked on this challenge with Eunice Do.


# Your Solution Below

=begin
	
PSEUDOCODE:

Input: A number
Output: A factorial of the input number
- Define a variable that is equal to the number (x)
- Define a variable that is equal to the number minus 1 (y)
- Reduce y by 1 until y is equal to 0 while miltiplying it into x
- Return X

=end

def factorial(number)
  y = number - 1
  x = number
  until y == 0 do
    x *= y
    y -= 1
  end
  return x
end
