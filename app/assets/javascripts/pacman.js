
var loading_timer = setInterval(function(){loading_tick(); }, 300);
function loading_tick()
{
	for(i=0 ; i<$('#pacman i').size() ; i++)
	{		
		if($('#pacman i')[i].innerHTML==" ' ")
			$('#pacman i')[i].innerHTML = " ' ' ' ' ' ' ' ' ' ' ' ' ' ' ";
		else
			$('#pacman i')[i].innerHTML = $('#pacman i')[i].innerHTML.replace("' '", "'");
	}
}