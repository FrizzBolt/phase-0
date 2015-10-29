# Drawer Debugger

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item)
    @contents.delete(item)
  end

  def dump 
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type.capitalize }
  end

end

class Silverware

  attr_reader :type

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "Eating with the #{type}."
    @clean = false
  end
  
  def clean_silverware
    @clean = true
  end
  
  def clean
    return @clean ? "The #{type} is clean." : "The #{type} is dirty." 
  end
  
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item(knife1)
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents
# What will you need here in order to remove a spoon? You may modify the driver code for this error.

raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE

# spoon = Silverware.new("spoon")
# silverware_drawer.add_item(spoon)
# silverware_drawer.view_contents

=begin

# Reflection

What concepts did you review or learn in this challenge?

I reviewed how to debug and how to read and write driver code. I think these are vital skills
moving forward. I suspect I'll be looking at some messy code when I'm working on campus and
on deadlines and learning how to write good driver code and debug is really important to know.


What is still confusing to you about Ruby?

I'm obviously far from knowing everything about Ruby and that's totally fine. Sometimes I will take a look at a block of code and it will take me longer to read it than I think it should. I'd like to build up my confidence with reading because I have to be able to read code in order to think in code.

I'm going to do more of the review challenges to keep brushing up my skills in writing code
this week as well. I feel like I brushed over attr accessors and that's an important part of
working with classes.



What are you going to study to get more prepared for Phase 1?

I definitely need to review attr accessors before moving forward. I'm going to go
on CodeWars or Rubyque and do some debug challenges. I have a much easier time writing
code than I do reading it and since my future profession will require a lot of the former,
I will need to work on it.

I also want to get some more time in working with DOM. I had a dev friend help me go over
it and it was a very enlightening training session, but it also covered a lot very quickly
so I'd like to go start from the beginning and work with it again.

On top of that, my performance in the SQL quiz was pretty weak, but that might have been
since I decided to take the quiz after working only 1 day in SQL which was a complete mistake.
I'm going to finish the Khan academy course for that. I'm sure I'll be working with SQL a lot
more in the coming months.

One thing I do feel pretty confident is just general algorithm writing. I seem to be
doing quite good at that so far since I find it so fun to puzzle over.

All that said, debugging more is the first step. I really want to be able to read code accurately
at a glance like I've seen professionals do. That's something that of course simply comes with
reading a ton of code. Reading code, running it over in your head, and trying to spot the issues
with it though is some of the best coding practice you can get.


=end