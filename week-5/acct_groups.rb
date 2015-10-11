=begin

PSEUDOCODE:

Input: Names of Copperheads cohort members in an array
Output: A hash containing each group member assigned to a group number
Steps:
-Create an array that contains the numbers 1 through 11 repeated 5 times 
and shuffle it.
-Combine the names and numbers into a 2d-array.
-Convert the 2d-array into a hash.
	
=end


copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]
hash = Hash.new
group_num = Array.new
5.times { group_num << (1..11).to_a }
group_num = group_num.flatten.shuffle
groups = copperheads.zip(group_num) 
groups.each { |name, num| hash[name] = num }

=begin

REFLECTION:

What was the most interesting and most difficult part of this challenge?

I spent a long time on this challenge. I initially wrote a very long and ineligant
solution produced a nearly correct result, but it wasn't perfect. That lead me down
a refactoring rabbit hole that lasted about an hour and a half. I researched
everything I wanted to do piece by piece and it wasn't getting anywhere. Using the #zip
method was sort of a "eureka" moment since that meant i could just work with arrays
and convert them into a hash at the end. I rewrote my pseudocode and the whole
final refactoring took about 15 minutes.


Do you feel you are improving in your ability to write pseudocode and break 
the problem down?

In some sense, yes. The issue is that sometimes my pseudocode runs me into a wall
like it did in this challenge. I can imagine this will go away when I pick up
new methods and start to master the syntax.


Was your approach for automating this task a good solution? What could have 
made it even better?

I think it was a good solution. What would make it even better is if I wrote
a seperate piece of code that made it so I could input a cohort of any length and
file it down. My solution only works with the current cohort. I'm just too low on
time to write that bit out.


What data structure did you decide to store the accountability groups in and why?

If I snipped the last 2 lines off of my code, I could have returned a 2d-array, but
I figured a hash would be neater since there's only one number assigned to each person


What did you learn in the process of refactoring your initial solution?Did you 
learn any new Ruby methods?

I've never used the #flatten, #shuffle, or #zip methods before this project, but I'd
read about all of them. I also learned that you can pass a 2d-array into a hash by using
an #each interation and two arguments.

=end