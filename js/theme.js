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
	$(function() {
		if (location.hash.startsWith('#collapse') && window.location.hash.length > 0) {
			var a = 'a[href="' + window.location.hash + '"]';
			$(a).click();
			$('#accordion ' + a).click();
		}
	});
	//E-mail Ajax Send
	$(".ajax-form").submit(function() { 
		var th = $(this);
		$.ajax({
			type: "POST",
			url: "/catalog/view/theme/mytheme/mail.php", 
			data: th.serialize()
		}).done(function() {
			alert("Ваше сообщение успешно отправлено администрации сайта!");
			setTimeout(function() {
				th.trigger("reset");
			}, 1000);
		});
		return false;
	});
}); 

function initMap() {
    var uluru = {lat: 50.438628, lng: 30.524446};
    var map = new google.maps.Map(document.getElementById('map'), {
		zoom: 14,
		center: uluru,
		mapTypeControl: false,
		fullscreenControl: false,
		streetViewControl: false,
		scaleControl: false,
		rotateControl: false,
		zoomControl: false,
		styles: [
	    {
	        "stylers": [
	            {
	                "hue": "#31bfa3"
	            },
	            {
	                "saturation": 0
	            }
	        ]
	    },
	    {
	        "featureType": "road",
	        "elementType": "geometry",
	        "stylers": [
	            {
	                "lightness": 100
	            },
	            {
	                "visibility": "simplified"
	            }
	        ]
	    },
	    {
	        "featureType": "road",
	        "elementType": "labels",
	        "stylers": [
	            {
	                "visibility": "off"
	            }
	        ]
	    }
	]
    });
    var marker = new google.maps.Marker({
      position: uluru,
      map: map,
      icon: 'image/icon-location.png'
    });
}