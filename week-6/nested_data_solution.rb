# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================
# array[1][2][0]
# array[1][1][0]
# array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================

# hash[outer][inner]["almost"][3]
# hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

# nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! { |nested| nested + 5 }
  else 
    element + 5
  end
end
  p number_array
  
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |first|
  if first.kind_of?(Array)
    first.map! do |second| 
      if second.kind_of?(Array)
        second.map! {|third| third + "ly"}
      else
        second + "ly"
      end
    end  
  else
      first + "ly"
  end
end

p startup_names

=begin
	
REFLECTION:

What are some general rules you can apply to nested arrays?

-Don't use minimalistic element names. We tried using x, y, and z to start on the bonus
problem and it didn't turn out so well. Renaming it to first, second, and third really
helped keep track of the iteration.
-Use the index to iterate over arrays and the key to iterate over hashes.
-Accessing nested indexes requires stacking index references. For-instance, in this example:

array = [1,2,3["shoe", "bacon" ["bazooka"]]]

accessing bazooka would require you to access 0 index of the 2nd index of the third index
of the array. So you would access it by typing:

array[3][2][0]


What are some ways you can iterate over nested arrays?

Nested arrays require nested enumerators a lot of the time. If you're looking to iterate
over internal elements, you'll need to nest enumerators within each other. If there's another
way to do this, I haven't found it yet. You could also flatten the array and iterate over it,
but that would break down the structure of the array.


Did you find any good new methods to implement or did you re-useone you were already familiar 
with? What was it and why did you decide that was a good option?

We ended up using the map! iterator since it was a destructive method. I can't help but think that
the #transpose method will come in handy in the future so I'm curious to see what I can do with that
in the future. It only takes in 2d-arrays though so it didn't really work for this assignment.