
# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(grade)
  case grade
    when 0 .. 60
      p "F"
    when 60 .. 69
      p "D"
    when 70 .. 79
      p "C"
    when 80 .. 89
      p "B"
    when 90 .. 100
      p "A"
    else
      p nil
  end
end