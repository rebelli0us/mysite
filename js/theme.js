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

var latitude = 50.439242,
	longitude = 30.496362,
	map_zoom = 18;

var marker_url = '/image/icon-location.svg';

var main_color = '#007148',
	saturation_value= -1,
	brightness_value= 1;

var style= [ 
	{
		//Скрываем обозначение дорог на карте
		featureType: 'road.highway',
		elementType: 'labels',
		stylers: [
		    {visibility: "off"}
		]
	},
	{
		featureType: "road.highway",
		elementType: "geometry.fill",
		stylers: [
			{ hue: main_color },
			{ visibility: "on" }, 
			{ lightness: brightness_value }, 
			{ saturation: saturation_value }
		]
	}