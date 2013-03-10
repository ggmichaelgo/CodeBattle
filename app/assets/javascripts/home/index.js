function scroll_up()
{
	$('#profile, #main').animate({
		opacity: 1.00,
		top: '-520'
	}, 500, function() {
		$('.rank_board').scrollTop(0);
		$('.rank')[0].innerHTML = '0';
	});
}

function scroll_down()
{
	$('#profile, #main').animate({
		opacity: 1.00,
		top: '0'
	}, 500, function() {
		rank_cnt = 0;
		animate_rank();
		select_user();
	});
}

var rank=-1;
var rank_cnt = 0;
function animate_rank()
{	
	if(rank == -1)
		rank = parseInt($('.rank_board #selected').children()[0].innerHTML);		
	if(rank_cnt <= rank)
	{
		$('.rank')[0].innerHTML = rank_cnt++;
		setTimeout(animate_rank, 10);
	}	
}

function animate_bar()
{
	$('.red_bar').animate({
		left: 0
	}, 600, function(){ 
		$('.bar').animate({
			left: 0
		}, 600, function(){ 
			$('.red_bar').animate({
				left: 2000
			}, 600, function(){ });
		});
	});
}

$(document).ready(function(){
	setTimeout(function(){		
		animate_bar();
		setTimeout(function(){
			animate_rank();
			select_user();			
		}, 1800);
	}, 500);
});




