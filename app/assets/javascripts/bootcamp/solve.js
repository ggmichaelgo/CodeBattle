$(function() {
	$("#lang_bar li").click(function(){
		$(this).addClass("selected").siblings().removeClass("selected");
	});
	$('#new_code').bind("ajax:success", code_output);
});

function show_output () {
	$('#pacman').show();
	$('#new_code').submit();
	$('#notepad').animate({
		left: 460,
		opacity: 0.4
	}, 500);	
}

function hide_output () {
	$('#notepad').animate({
		left: 0,
		opacity: 1
	}, 500);
}

function scroller_question(data)
{
	if ( $('.scroller') )
	{
		if(data.length == 1)
		{
			scroll(parseInt(data[0].split('\n').pop()));
		}
		else
		{
			if(parseInt(data[i-1]) >= 0)
				scroll(parseInt(data[i-1]));
		}	
	}
}

function code_output(evt, data, status, xhr)
{
	console.log(data);
	$('#output textarea').val('');	
	content = '';
	content += '===== Result =====\n';
	content += data.pop();
	content += '\n';

	for(i=0 ; i<data.length ; i++)
	{
		content += "===== Run #" + (i+1) + " =====\n";
		content += data[i];
		content += '\n';
	}
	scroller_question(data);
	
	$('#output textarea').val(content);
	$('#pacman').fadeOut();	
}