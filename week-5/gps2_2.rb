=begin

Reflection:

What did you learn about pseudocode from working on this challenge?

I learned that pseudocoding is a pretty loose process. Since our methods
were so simple, they were all one line ling and that was reflected in the
pseudocode. We added the inputs and outputs to shell out what our arguments
were going to be.


What are the tradeoffs of using Arrays and Hashes for this challenge?

We used a hash because a hash defines key/value pairs and we were making a list
with what would essentially be adding a value to key. We could have used
a 2d array, I suppose but that would have taken longer.


What does a method return?

Methods return the defined statement within them. We were running into this
problem when we wanted to print out the information after making changes to
the data. The solution to this bug was to print out the information before
returning the product of the method. This way, the string we printed wasn't
the thing that was getting returned.

What kind of things can you pass into methods as arguments?

You can pass strings, integers, floats, arrays and hashes in is arguments.


How can you pass information between methods?

In our solution, we ran destructive methods one after the other, returning
a new hash each time.


What concepts were solidified in this challenge, and what concepts are still confusing?

I can't help but feel like we glossed over something. This challenge went by
really quickly and I'm not sure if there was some sort of new technique we were
supposed to learn for passing information between methods. Or maybe we're just
really good.

PSEUDOCODE:

-Create a hash where keys represent items and value represents quantity.

INPUT: Grocery list hash
OUTPUT: PUTS grocery list to screen
-Define a method that prints out the list.

INPUT: Grocery list, Item, Quantity
OUTPUT: Grocery list with added item and quantity
-Define a method that adds an item to the list.

INPUT: Grocery list, Item
OUTPUT: Grocery list with removed item and quantity
-Define a method that removes an item from the list.

INPUT: Grocery list, Item, Quantity
OUTPUT: Grocery list with modified item and quantity
-Define a method that updates quantities in the list.

=end


def create_list
  puts "A new grocery list was created!"
  return list = {}
end

def addto_list(list, item, quantity)
  puts "#{quantity} of #{item} was added to the list!"
  return list[item] = quantity
end

def remfrom_list(list, item)
  puts "#{item} was removed from the list!"
  return list.delete(item)
end

def mod_list(list, item, quantity)
  puts "#{quantity} of #{item} has been modified into the list!"
  return list[item] = quantity
end

def print_list(list)
  puts "Shopping list:"
  list.each { |x, y| puts "#{x}, qty:#{y}" }
end
