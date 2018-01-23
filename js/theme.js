$(document).ready(function(){
	$("#slider_container").owlCarousel({
		animateOut: 'zoomOutLeft',
		animateIn: 'zoomInRight',
		items:1,
		loop:true,
		autoplay:true,
		autoplayTimeout:5000,
		autoplayHoverPause:true,		
		autoHeight:true
	});
	$(".toggle_btn").click(function(){
		$("header").toggleClass("toggled_header");
	});
	$(window).scroll(function(){
		if($(window).scrollTop() > 200){
			$(".scroll_btn").addClass("active_scroll");
		}
		else{
			$(".scroll_btn").removeClass("active_scroll");
		}
	});
	$(".scroll_btn").click(function (){
		$('body').animate({'scrollTop': 0}, 1000);
		$('html').animate({'scrollTop': 0}, 1000);
		return false;
	});
});
