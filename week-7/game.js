 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create a node.js version of Conway's Game of Life.
// Goals: To make beautiful patterns and creations.
// Characters: Tiny little cells
// Objects: current game state (currentGame),
// Functions: game loop (evolve), surrounding cell check (surround), cell display (displayCell), game display (displayGame)

// Pseudocode
/*
Basic Overview:
"■" is a living cell
"." is a dead cell
-Each living cell with less than 2 neighbors dies from isolation
-Each living cell with more than 3 neighbors dies from overpopulation
-Each dead cell with 3 neighbors becomes alive

Generation: (Checking the surrounding cell and adding to the variable may need to be in a different function)
-Iterate over each element in the 2d-array
  -If the element is dead
    -Then check each surrounding cell on the grid to see if it is alive
    -For every live cell surrounding the dead one, add 1 to a variable
    -If the variable is equal to three
    -Set the cell to living
  -If the element is alive
    -Then check each surrounding cell on the grid
    -For each living cell surrounding the current element, add 1 to a variable.
    -If that variable is greater than 3 or less than 2, set the cell to dead.
  -Store a new copy of the array into an object.

Game loop:
  -Create a loop that counts upwards through an amount of generations specified in an object
    -During that loop, return the generation number ("Generation #1" etc.)
    -Display the current generation on the array calling from the object
    -Store the current generation back in the object and then run again until the loop runs out.


// Initial Code
/*
function surround(board, i, j) {
    var score = 0;
      //Check Right
      if(j !== 2) {
        if(board[i][j + 1] === "x"){
          score++;
        }
      }
      //Check Left
      if(j !== 0) {
        if(board[i][j - 1] === "x"){
          score++;
        }
      }
      //Check Up
      if(i !== 0) {
        if(board[i - 1][j] === "x"){
          score++;
        }
      }
      //Check Down
      if(i !== 2) {
        if(board[i + 1][j] === "x"){
          score++;
        }
      }
      //Check Up-Left
      if(i !== 0 && j !== 0) {
        if(board[i - 1][j - 1] === "x"){
          score++;
        }
      }
      //Check Up-Right
      if(i !== 0 && j !== 2) {
        if(board[i - 1][j + 1] === "x"){
          score++;
        }
      }
      //Check Down-Left
      if(i !== 2 && j !== 0) {
        if(board[i + 1][j - 1] === "x"){
          score++;
        }
      }
      //Check Down-Right
      if(i !== 2 && j !== 2) {
        if(board[i + 1][j + 1] === "x"){
          score++;
        }
      }
    return score;
}


var generation = function(game) {
    var next = [[],[],[]]
    for (var x = 0; x < game.length; x++) {
        for (var y = 0; y < game[x].length; y++) {
            if (game[x][y] === "x") {
                if (surround(game, x, y) != 2 && surround(game, x, y) != 3) {
                    next[x][y] = ".";
                }
                else {
                    next[x][y] = "x"
                }
            }
            else if (game[x][y] === ".") {
                if (surround(game, x, y) === 3) {
                    next[x][y] = "x";
                }
                else {
                    next[x][y] = ".";
                }
            }
            else {
              return "error"
            }
        }
    }
    return next;
};

var test = [
    [".", "x", "."],
    [".", "x", "."],
    [".", "x", "."]
];

console.log(generation(test));
*/



// Refactored Code




// Conway's Game of Life

// For more information on the history of this game/automation check out:
// http://www.math.com/students/wonders/life/life.html

var properties = {
  generations: 10,
}

var currentGame = {
  game: [
    [false, false, false, false, false, false, false, false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, false, false, false, false, false, false, false],
    [false, false, false, false, false, false, false, false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, true,  false, false, true,  false, false, false],
    [false, false, false, false, false, false, false, false, false, false],
],
  generationNumber: 1,
  
}

function surround(board, i, j) {
    var score = 0;
      //Check Right
      if(j !== 9) {
        if(board[i][j + 1]) {
          score++;
        }
      }
      //Check Left
      if(j !== 0) {
        if(board[i][j - 1]){
          score++;
        }
      }
      //Check Up
      if(i !== 0) {
        if(board[i - 1][j]){
          score++;
        }
      }
      //Check Down
      if(i !== 9) {
        if(board[i + 1][j]){
          score++;
        }
      }
      //Check Up-Left
      if(i !== 0 && j !== 0) {
        if(board[i - 1][j - 1]){
          score++;
        }
      }
      //Check Up-Right
      if(i !== 0 && j !== 9) {
        if(board[i - 1][j + 1]){
          score++;
        }
      }
      //Check Down-Left
      if(i !== 9 && j !== 0) {
        if(board[i + 1][j - 1]){
          score++;
        }
      }
      //Check Down-Right
      if(i !== 9 && j !== 9) {
        if(board[i + 1][j + 1]){
          score++;
        }
      }
    return score;
}


var generation = function(game) {
    var next = [[],[],[],[],[],[],[],[],[],[]];
    for (var x = 0; x < game.length; x++) {
        for (var y = 0; y < game[x].length; y++) {
            if (game[x][y]) {
                if (surround(game, x, y) != 2 && surround(game, x, y) != 3) {
                    next[x][y] = false;
                }
                else {
                    next[x][y] = true;
                }
            }
            else if (!game[x][y]) {
                if (surround(game, x, y) === 3) {
                    next[x][y] = true;
                }
                else {
                    next[x][y] = false;
                }
            }
            else {
              return "error"
            }
        }
    }
    return next;
}




var evolve = function(game) {
  for(var a = 0; a < properties.generations; a++) {
    console.log("Generation #" + (currentGame.generationNumber));
    currentGame.generationNumber++;
    currentGame.game = generation(currentGame.game);
    displayGame(currentGame.game);
    
  }
}

var displayCell = function (x) {
      if (x === true) {
        return "■";
      }
      else {
        return ".";
      }
    }

var displayGame = function(game) {
  for(var u = 0; u < game.length; u++) {
    console.log(game[u].map(displayCell).join(" "));
  }
}


evolve(currentGame.game);


// Reflection
/*
What was the most difficult part of this challenge?

I had a couple of run-ins with wonky JavaScript syntax. when I wrote my generation function it only took, I had
it in there pretty much perfectly save for one little misunderstanding with JavaScript and spent about 3 hours staring
at the damn thing trying to figure out what was wrong. Eventually, I started tinkering and finally it started working
because I didn't quite understand that I had to set the function to write a new array instead of overwrite the old
one.


What did you learn about creating objects and functions that interact with one another?

I think I learned more about pure functions in Javascript in this assignment than I did about objects. I wish
I could have interacted with the objects more. My first refactoring ran the same and didn't even include objects
at all so I had to change them to meet the standards of the project. I then got lost in trying to convert it
into a pretty DOM project after I finished and I made some big progress in learning DOM which is a confusing
beast of a framework. :P


Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?

I got to use #map for the first time in JS which was helpful in displaying my blocks. I turned my input into
trues and falses so that it would be easier to work with in DOM. It makes it really hard for the user to input
their own tests though if you just change one of the falses to true, you can see it at work. The goal is to
eventually get a version with a UI where the user can click cells on and off and then start and stop the evolution
as they please. I'm looking forward to getting it to work. So far it only generates one new generation based
on the previously inputted array and it's not looping for some reason, but I'm amazed it even works at all and
looks pretty!

*/