

// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var greetings = 5;
while(greetings > 5) {
    console.log("Hullo!");
    greetings--;
}

// Favorite Food

var food = prompt("What's your favorite food?");
console.log("Really? " + food + " That's mine too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var x = 1;  x < 101; x++) {
    if (x % 3 === 0 && x % 5 === 0) {
        console.log("FizzBuzz");
    }
    else if (x % 3 === 0) {
        console.log("Fizz");
    }
    else if (x % 5 === 0) {
        console.log("Buzz");
    }
    else {
        console.log(x);
    }
}

// Functions

// Complete the `minimum` exercise.

console.log(Math.min(0, 10));
return Math.min(0, 10);
// Returns 0
console.log(Math.min(0, -10));
return Math.min(0, -10);
// Returns -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
    name: "Josh",
    favfood1: "sushi",
    favfood2: "steak",
    favfood3: "toast",
    quirk: "I play the accordion."
}