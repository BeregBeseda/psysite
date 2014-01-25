$(document).ready(function(){
	$("#angle").hover(function() {
		$("#angle_flip").stop()
			.animate({
				width: '318px',
				height: '319px'
			}, 700);
		$("#fond_angle_text").stop()
			.animate({
				width: '309px',
				height: '310px'
			}, 700);
		} , function() {
		$("#angle_flip").stop()
			.animate({
				width: '213px', 
				height: '75px'
			}, 300);
		$("#fond_angle_text").stop() 
			.animate({
				width: '205px', 
				height: '70px'
			}, 280);
	});
});