// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $("body");

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$("body > h1").css({"color": "#6666ff"})
$("body > h1").css({"border": "solid 1px black"})
$("body > h1").css({"visibility": "hidden"})

//RELEASE 4: Event Listener
  // Add the code for the event listener here
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.virginiaherpetologicalsociety.com/reptiles/snakes/northern-copperhead/nch_page_copperhead02.jpg')
  });
 $('img').on('mouseout', function(e) {
    e.preventDefault();
    $(this).attr('src', 'dbc_logo.png');
 });

//RELEASE 5: Experiment on your own

$('img').on('click', function() {
  $(this).css({"border": "solid 4px black"});
  $(this).animate({"padding": "20px"}, "1000");
});
$('img').on('dblclick', function() {
  $(this).animate({height: "toggle"}, "2000");
});


//REFLECTION

/*
What is jQuery?

jQuery is a Javascript library that is used to manipulate objects within webpages.


What does jQuery do for you?

jQuery eliminates a lot of the tedium of working with DOM by simplifying the object reference system
and offering a simplified way to animate objects.


What did you learn about the DOM while working on this challenge?

I learned that knowledge of the DOM necessary when debugging JavaScript libraries and frameworks.
We ran into some limitations of JS along the way that we couldn't quite fix due to not fully understanding
the limitations of JS and jQuery.

*/
})  // end of the document.ready function: do not remove or write DOM manipulation below this.