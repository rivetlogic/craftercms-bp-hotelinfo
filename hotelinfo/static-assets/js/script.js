jQuery(document).ready(function($) {
 
    $(".scroll").click(function(event){   
    event.preventDefault();
    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 800,'swing');
    });
    });





// uniform
    $(function () {
    $('input[type="checkbox"], input[type="radio"], select').uniform();
    });

// social icon
$(document).ready(function($) {
  $('.social i').tooltip('hide')
});

// 

var wow = new WOW(
  {
    boxClass:     'wowload',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       true,       // trigger animations on mobile devices (default is true)
    live:         true        // act on asynchronously loaded content (default is true)
  }
);
wow.init();




$('.carousel').swipe( {
     swipeLeft: function() {
         $(this).carousel('next');
     },
     swipeRight: function() {
         $(this).carousel('prev');
     },
     allowPageScroll: 'vertical'
 });
 
var v = document.getElementById('bgvid');
v.addEventListener('play', function() { 
	v.play();
}, false);

function pauseStart() {
    var vid = document.getElementById('bgvid');
    
    if (vid.paused) {
    	vid.classList.add("stopfade");
        vid.play();
    } else {
    	vid.classList.add("stopfade");
        vid.pause();
    }
}
document.getElementById("bgvid").addEventListener("click", pauseStart);

$('#bgvid').on('ended', function () {
  this.load();
  this.play();
});