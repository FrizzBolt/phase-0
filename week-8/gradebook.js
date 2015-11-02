
//Challenge 8.2

// Initial Solution
/*
var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];




var gradebook = new Object;
var testScores = {};

for(var x = 0; x < 4; x++) {
  gradebook[students[x]] = new Object();
  gradebook[students[x]]["testScores"] = scores[x];
} 

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
    return average(gradebook[name].testScores);
}


var average = function(name) {
  for(var num = 0; num < name.length; num++) {
    var total = gradebook[name].testScores.reduce(function(a, b) {
      return a + b;
    });
   return total / name.length
  }
}


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

  console.log(average("Joseph"));
*/

//Refactored Solution

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];




var gradebook = new Object;
var testScores = {};

for(var x = 0; x < 4; x++) {
  gradebook[students[x]] = new Object();
  gradebook[students[x]]["testScores"] = scores[x];
} 

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
    return average(gradebook[name].testScores);
}

var average = function(tests) {
  var average = 0;
  for(var num = 0; num < tests.length; num++) {
    average += tests[num];
  }
  return average / tests.length;
}

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

  console.log(average("Joseph"));

//Tests

/*
assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
*/

//Reflection
/*
What did you learn about adding functions to objects?

I learned HOW to add functions to objects! I also learned that referencing different nested properties
in objects can be a fickle task.


How did you iterate over nested arrays in JavaScript?

For loops and For in loops were the main methods of iteration we used in this assignment.


Were there any new methods you were able to incorporate? If so, what were they and how did they work?

In our initial solution, we used a reduce function which iterates over the scores and adds them all together
into a variable. This worked after much debugging, but ultimately some weirdness in JS syntax didn't allow the
eighth test to pass. Our refactored solution is the beginners method, but it's cleaner and easier to read. We 
just wanted to do something cool.
*/