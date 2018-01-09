$(document).ready(function() {
	$('.review_unit').first().addClass('active_review');

});

$(document).ready(function(){

	$('.review_control_next').click(function(){
		var currentReview = $('.active_review');
		var currentReviewIndex = $('.active_review').index();
		var nextReviewIndex = currentReviewIndex + 1;
		var nextReview = $('.review_unit').eq(nextReviewIndex);
		currentReview.fadeOut(700);
		currentReview.removeClass('active_review');

		if(nextReviewIndex == ($('.review_unit:last').index()+1)){
			$('.review_unit').eq(0).fadeIn(700);
			$('.review_unit').eq(0).addClass('active_review');
		} else {
			nextReview.fadeIn(700);
			nextReview.addClass('active_review');
		}
	});

	$('.review_control_prev').click(function(){
		var currentReview = $('.active_review');
		var currentReviewIndex = $('.active_review').index();
		var prevReviewIndex = currentReviewIndex - 1;
		var prevReview = $('.review_unit').eq(prevReviewIndex);

		currentReview.fadeOut(700);
		currentReview.removeClass('active_review');
		prevReview.fadeIn(700);
		prevReview.addClass('active_review');
	});
});