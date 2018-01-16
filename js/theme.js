$(document).ready(function(){
	$("#slider_container").owlCarousel({
		animateOut: 'zoomOutLeft',
		animateIn: 'zoomInRight',
		items:1,
		loop:true,
		autoplay:true,
		autoplayTimeout:6000,
		autoplayHoverPause:true,		
		autoHeight:true
	});
});
