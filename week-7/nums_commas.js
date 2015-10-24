// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

/* Pseudocode

Input: Any integer
Output: The integer formatted with commas
Steps:
-Create a function called separate comma that accepts an integer as an argument.
-Split the integer into an array.
-Reverse the array
-Add a comma after every 3rd element 
-Reverse the array
-Join it into a string
-Return the string

*/
// Initial Solution

// var separateComma = function(integer) {
//   var array = integer.toString().split("");
//   array.reverse();
//   for(var x = 1; x < array.length; x++) {
//     if (x % 3 == 0) {
//       array[x] = array[x] + ",";
//     }
//   }
//   array.reverse();
//   var final = array.join("");
//   return final;
// }

// console.log(separateComma(1000000));


// Refactored Solution

//NOTICE!! ONLY WORKS IN RECENT VERSIONS OF NODE!!!

var separateComma = function(integer) {
  var x = integer.toLocaleString();
  return x;
}

console.log(separateComma(1000000));

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}


assert(
  separateComma(1000000) === '1,000,000',
  "Inputting 1000000 should return '1,000,000'",
  "1."
)

assert(
  separateComma(12345) === '12,345',
  "Inputting 12345 should return '12,345'",
  "2."
)

assert(
  typeof separateComma(18428472) === 'string',
  "Output should be a string'",
  "3."
)

assert(
  separateComma(1) === '1',
  "Inputting 1 should return '1'",
  "4."
)


/* Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

We approached the problem similarly to what we'd both done in Ruby. There wasn't much of a difference with the way that we
decided to implement our code on the initial solution.

What did you learn about iterating over arrays in JavaScript?

Using for loops is kind of a necessary evil in some cases. When I first encountered 'for' loops, i didn't like them very
much but they do come in handy when performing iterative tasks. I also learned that iterating in JS is surprisingly similar
to iterating in Ruby. I kind of knew this to begin with, but it's easy to forget when you're learning the nuances of another
language. This exercise built my confidence quite a bit in regards to dealing with JS.


What was different about solving this problem in JavaScript?

It was actually surprisingly similar to Ruby when we were solving it. A lot of the methods we'd used in ruby for handling
strings and arrays just happened to also be common do Javascript. It makes me wonder if those methods are common to most
other programming languages as well.


What built-in methods did you find to incorporate in your refactored solution?

I stumbled on #toLocaleString on accident when researching string iteration in JS and realized that there's already
a predefined method for handling commas. It was kind of a silly way to refactor our solution, but it's probably
the most elegant way to go about it.

*/