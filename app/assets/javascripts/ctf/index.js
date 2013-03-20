var index = 0;

function select_center()
{
	$('.circle.big').toggleClass('big small');	
	$($('.circle')[index]).toggleClass('small big');
}

function slide_circles(dir)
{
	$('.circle').animate({
		'left': '+=' + (dir*200)
	}, 100);
	index += -dir;
}

$(document).ready(function(){
	$('.circle').animate({
		'left': '-=702'
	});
	$($('.circle.small')[index]).toggleClass('small big');
	$('.arrow.left').mousehold(function(){
		if(index > 0)
			slide_circles(1);		
	});
	$('.arrow.right').mousehold(function(){
		if(index < max)
			slide_circles(-1);
	});
	$('.arrow.right').mouseup(function(){
		select_center();
	});
	$('.arrow.left').mouseup(function(){
		select_center();
	})
});

document.onselectstart = function(){
	return false;
} 

document.onkeydown = function(e, args){
	if(index < max && e.keyCode == 39)
		slide_circles(-1);
	if(index > 0 && e.keyCode == 37)
		slide_circles(1);
	return e;
};

document.onkeyup = function(e,args){
	select_center();
	return e;
}


