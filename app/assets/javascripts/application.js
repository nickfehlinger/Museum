// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs

//= require_tree .
$("input[type='text']").bind('focus', function() {
   $(this).css('background-color', 'red');
});
 

 var slideIndex = 1;
var timeoutId;
showSlides(slideIndex);

function plusSlides(n) {
  // slideIndex+=n;
  showSlides();
}

function currentSlide(n) {
  slideIndex = n;
  showSlides(true);
}


function showSlides(stay=false) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    if( timeoutId )
    	clearTimeout(timeoutId);

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    if(!stay) slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    timeoutId = setTimeout((function(slideIndex){
    	console.log("slideIndex:", slideIndex)
    	return showSlides;
    })(slideIndex), 6000); // Change image every 6 seconds
} 

console.log(document.getElementsByClassName("mySlides"));