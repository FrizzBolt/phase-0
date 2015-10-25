// JavaScript Olympics

// I paired with Jeremy Powell on this challenge.

// This challenge took me 1.5 hours.



// Bulk Up


var Jeremy ={
  name: "Jeremy",
  event: "basketball"
};

var Michael ={
  name: "Michael Phelps",
  event: "200 Freestyle"
};

var Serena ={
  name: "Serena Williams",
  event: "singles match"
};


var array = [Jeremy, Michael, Serena];

var winner = function(nameArray) {
  for(var x = 0; x < nameArray.length; x++) {
    nameArray[x].win = nameArray[x].name + " won at the " + nameArray[x].event;
    console.log(nameArray[x].win);
  }
};



console.log(winner(array));


// Jumble your words

var jumble = function(string) {
  var array = string.split("");
  array.reverse();
  var output = array.join("");
  return output;
};

console.log(jumble("Hello world."));

var test = [2,3,4,5,6,8];

var even = function(array) {
  var out = [];
  for(var x = 0; x < array.length; x++) {
    if (array[x] % 2 === 0) {
      out.push(array[x]);
    }
  }
  return out;
};

console.log(even(test));



// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*

What JavaScript knowledge did you solidify in this challenge?

I learned about constructor functions and got to put that new knowledge to good use. I
also got to solidify some knowledge with array iteration which ended up helping tremendously
with my game project.


What are constructor functions?

Constructor functions work similarly to Ruby classes in that you are creating instances
of new objects and acting on those instances as opposed to having to create new objects
every time you add something.


How are constructors different from Ruby classes (in your research)?

Well, for one, they are a little less convenient to use - haha. But constructor functions are
do not necessarily contain a list of methods as they do in Ruby. You would use outside methods
to act on your instances.


*/