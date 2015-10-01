# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    Line 170
# 3. What is the type of error message?
#    This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#    The interpreter didn't expect end of input
# 5. Where is the error in the code?
#    The method definition did not contain an end.
# 6. Why did the interpreter give you this error?
#    All method definitions need to include an end.

# --- error -------------------------------------------------------

south_park = "funny"

# 1. What is the line number where the error occurs?
#    Line 36
# 2. What is the type of error message?
#    in <main> error
# 3. What additional information does the interpreter provide about this type of error?
#    Undefined local variable.
# 4. Where is the error in the code?
#    south_park was not defined.
# 5. Why did the interpreter give you this error?
#    All local variables must be defined.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#    Line 51
# 2. What is the type of error message?
#    in <main> error
# 3. What additional information does the interpreter provide about this type of error?
#    Undefined method "cartman"
# 4. Where is the error in the code?
#    The cartman method is undefined and contains no end.
# 5. Why did the interpreter give you this error?
#    All method's must be defined with 'def' and ended.

# --- error -------------------------------------------------------

def cartmans_phrase(argument)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    Line 67
# 2. What is the type of error message?
#    In carmans_phrase
# 3. What additional information does the interpreter provide about this type of error?
#    Wrong number of arguments
# 4. Where is the error in the code?
#    There were no arguments defined in cartmans_phrase
# 5. Why did the interpreter give you this error?
#    All methods must contain at least one argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('offensive_message')

# 1. What is the line number where the error occurs?
#    Line 86 & Line 90
# 2. What is the type of error message?
#    in cartman_says method
# 3. What additional information does the interpreter provide about this type of error?
#    Wrong number of arguments between line 86 and line 90.
# 4. Where is the error in the code?
#    There is no argument listed on line 90.
# 5. Why did the interpreter give you this error?
#    All executions of a method must contain the same number of arguments
#    as the method itself.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'a')

# 1. What is the line number where the error occurs?
#    Line 107 & Line 111
# 2. What is the type of error message?
#    in cartmans_lie method
# 3. What additional information does the interpreter provide about this type of error?
#    Wrong number of arguments between line 107 and Line 111
# 4. Where is the error in the code?
#    There is only one argument listed in line 111.
# 5. Why did the interpreter give you this error?
#    All executions of a method must contain the same number of arguments
#    as the method itself.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#    Line 128
# 2. What is the type of error message?
#    in '*'
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum.
# 4. Where is the error in the code?
#    Number cannot be multiplied by string.
# 5. Why did the interpreter give you this error?
#    Number cannot be multiplied by string. Strings can be multiplied by number.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#    Line 143
# 2. What is the type of error message?
#    in '/'
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0
# 4. Where is the error in the code?
#    The variable calls for 20/0 which is impossible.
# 5. Why did the interpreter give you this error?
#    You cannot divide by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    
# 2. What is the type of error message?
#    in 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such file (loaderror)
# 4. Where is the error in the code?
#    Program tries to load a file that does not exist or did not set variable.
# 5. Why did the interpreter give you this error?
#    Variables must be defined with '=' and any loaded files must load actual files.   

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment
=begin

Which error was the most difficult to read?
The second error was especially confusing since the line number that
the error threw was at the bottom of the document and not under the end
of the defined method.

How did you figure out what the issue with the error was?
When I tried adding an 'end' at the end of the document, the document
didn't run any of the code underneath at which point I realized I had
made the whole thing a method! When I added another 'end' below the method
definition I was good to go.

Were you able to determine why each error message happened based on the code? 
Yes. Most of them were pretty easy except for the second one.

When you encounter errors in your future code, what process will you follow to help you debug?
Check the line number, of course, and any line numbers referenced in the error.
When the line number is at the very end of the document and says keyword_end,
there's probably a missing 'end' somewhere.

=end