# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_array_finding_method(array, letter)
  new_array = []
  array.each { |x| new_array << x.to_s }
  return new_array.select { |x| x.include?(letter) }
end


def my_hash_finding_method(hash, age)
  array = []
  hash.each { |key, value| if value == age then array << key end }
  return array
end

#Identify and describe the Ruby method(s) you implemented.
#Select returns an array containing every object in the array that returns true
#when run through the block of code.
#Include? returns true if the argument passed through is located within the array.