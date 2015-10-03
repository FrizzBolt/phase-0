
# Leap Years

# I worked on this challenge with: Deanna Warren.


# Your Solution Below

def leap_year?(x)
  if x % 4 == 0 && x % 100 != 0 || x % 400 == 0
    return true
  else
    return false
  end
end