# Your Names
# 1) Deanna Warren
# 2) Josh Abrams

# We spent 1 hours on this challenge.


  
# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
#Hash defining food as keys and serving size as values
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#Iterates through library checking to see if items to make are not equal to items in library. Error counter should return either 1 or 0

  if menu.has_key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#Setting up whether or not you have an even number to the serving size. 
  serving_size = menu[item_to_make]
#Returns a remainder after diving order quantity by serving size calculating leftover ingredients
  leftover_ingredients = order_quantity % serving_size

#Returns notification of quantity of items needed and any remaining ingredients if available.
  case leftover_ingredients
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

