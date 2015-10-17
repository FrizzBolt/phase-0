# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Max Iniguez.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: a 16 digit number
# Output: true or false, based on if the sum of 16 digit number, with every other digit doubled is divisible by 10
# Steps:
# 1. RAISE ERROR if not 16 digits
# 2. INITIALIZE instance variable with the 16 digit number
# 3. Separate each digit into an array
# 4. Every even index in the array is doubled
# 5. Separate each index in the array into its digits
# 6. Add all digits, and set them equal to new variable
# 7. Check to see if variable is divisible by 10
# 8. RETURN true or false based on outcome



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(creditnum)
    @creditnum = creditnum
    unless creditnum.to_s.length == 16
      raise ArgumentError.new("A credit card must have 16 digits.")
    end
  end
  def check_card
     @creditnum_arr = @creditnum.to_s.split("")
     @creditnum_int = @creditnum_arr.map { |x| x.to_i }
     @creditnum_dub = @creditnum_int.each_with_index.map do |num, index|
      if index % 2 == 0
        num *= 2
       else num
       end
     end
     @creditnum_div = @creditnum_dub.map { |z| z.to_s.split("")}
     @creditnum_final = @creditnum_div.flatten
     @creditnum_finalfinal = @creditnum_final.map { |a| a.to_i }
    @creditnum_finalfinalfinal = @creditnum_finalfinal.inject { |sum, element| sum += element }
    if @creditnum_finalfinalfinal % 10 == 0
      return true
    else
      return false
    end
  end
end
=end
#  cc = CreditCard.new(4408041234567901)
#   cc.check_card
# Refactored Solution


 
class CreditCard

  def initialize(creditnum)
    @creditnum = creditnum
    unless creditnum.to_s.length == 16
      raise ArgumentError.new("A credit card must have 16 digits.")
    end
  end
  
  def check_card
     array = @creditnum.to_s.split("").map { |x| x.to_i }
     array_2 = array.each_with_index.map do |num, index|
      if index % 2 == 0
        num * 2
       else num
       end
     end
    array_2.map! { |z| z.to_s.split("")}
    array_2.flatten!
    array_2.map! { |a| a.to_i }
    test_num = array_2.inject(0) { |sum, element| sum += element }
    if test_num % 10 == 0
      return true
    else
      return false
    end
  end
  
end


=begin


What was the most difficult part of this challenge for you and your pair?

The most difficult part for us was refactoring. We decided to make a non-destructive solution
originally which ended up being messy and unnecessary. We refactored and kept running into odd
errors. After a bunch of debugging, it finall started working again.


What new methods did you find to help you when you refactored?

We hadn't used #each_with_index before. My partner also used the #inject method which I had
not seen before. That one will definitely come in handy in the future.


What concepts or learnings were you able to solidify in this challenge?

There were some issues that I hadn't grasped yet in turns of destructive and non-destructive
methods. There are certain destructive enumerator methods prebuilt into Ruby that cannot be
run in certain conditions. I also learned some new methods as well.


=end




