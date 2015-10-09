=begin

REFLECTION:

Which data structure did you and your pair decide to implement and why?

We ran through several ideas. We had to take a break when we ran our first
rspec design and found out that we had to return more than one value in the
event that 2 different keys in the hash had an equal value.


Were you more successful breaking this problem down into implementable
pseudocode than the last with a pair? 

Not this time, but I thiink a lot of it had to do with the fact that my partner
and I both had spotty knowledge on hash value iteration. Our pseudocode
ended up being junk.


What issues/successes did you run into when translating your pseudocode to code?

Neither of us were very adept at iterating through hashes. We had to take a break
and redo the hash section in codecademy in order to get this to work.


What methods did you use to iterate through the content? Did you find 
any good ones when you were refactoring? Were they difficult to implement?  

We used 2 #each iterators and a #values iterator. We found the out about
#values when we were refactoring and it was able to strip several lines of
code from our initial design.


PSEUDOCODE:

-Create an empty hash and an empty array.
-Iterate over the array, both translating the array into a hash and adding 1 
 to the value of each corresponding key every time a matching key appears.
-Iterate over the hash to find which key has the highest value.
-Iterate over the hash and push each key with the highest value into a new
array.
-Return the new array.

=end


def mode(array)
    hash = Hash.new(0)
    new_array = []
    array.each { |x| hash[x] += 1 }
    maximum = hash.values.max
    hash.each do |key, value|
      if value == maximum
        new_array << key
      end     
    end
   return new_array 
end

