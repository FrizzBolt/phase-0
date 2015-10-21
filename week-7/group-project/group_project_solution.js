/*
PSEUDOCODE:
Input: An array of numbers
Output: The sum, median, and mean of the array
Steps:

-Define a variable that is set to zero.

-Define function called #sum containing a for loop
  -Iterate through each number in the array adding it to the variable.
  -Return the variable

-Define a function called #median that sorts the array from smallest number to largest. 
  -Take the length of the array and divide it by 2 and round that number down.
  -Find the index of the result added to the next index (+1) of the result and divide the sum by 2
  -Return the result of the division.

-Define a function called #mean that calls the #sum function and calculates the sum.
  -Take the sum and divide it by the length of the array.
  -Return the result of the division.
*/