function scroll_up()
{
	$('#profile, #main').animate({
		opacity: 1.00,
		top: '-=500'
	}, 500, function() {
		
	});
}

function scroll_down()
{
	$('#profile, #main').animate({
		opacity: 1.00,
		top: '+=500'
	}, 500, function() {
	});
}
