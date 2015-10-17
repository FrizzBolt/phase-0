#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

class NameData

  attr_accessor  :name

  def initialize
    @name = name
  end

end


class Greetings

  def initialize
    @me = NameData.new
    @me.name = "Josh"
  end

  def hello
    puts "Hello #{@me.name}. Fancy seeing you here."
  end
    
  def goodbye
    puts "See you later, #{@me.name}."
  end
    
  def curse
    puts "Curse you to the slippery caves of Whaf, #{@me.name}!!"
  end
    
end

	

# # Reflection

# What is a reader method?

# The reader method is a special form of method which can allow the reader to access and return
# instance variables outside of the class and print them to the terminal, but not edit them.
# Normally, this type of method is called a "getter".


# What is a writer method?

# The writer method is similar to the reader method. The difference between this and the reader method
# is that the user can define and change the variable but not print it to the terminal. This type of method
# is called a "setter".


# What do the attr methods do for you?

# In addition to what was said above, they allow the user to create clean, DRY code instead of redefining
# numerous getters and setters in their class.


# Should you always use an accessor to cover your bases? Why or Why not?
# What is confusing to you about these methods?

# It depends on whether or not you want the variable to be editable by the user. If not, then you would choose
# the attr_reader method and then you would only be able to return information. If you are looking to alter the
# value of the method but not print it, you would use the attr_writer method. If you're looking to do both,
# then you would use the attr_accessor.

# Not much is confusing. I'm looking to use them more often and I'm going to try and get as much practice with them
# as possible.

