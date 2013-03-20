$(function() {
	$("#lang_bar li").click(function(){
		$(this).addClass("selected").siblings().removeClass("selected");
	});

	$('#new_code').bind("ajax:success", code_output);
	$('#new_code').bind("ajax:error", function(){ setTimeout(hide_output, 1000) });
});

function show_solved_tag () {
	$('#solve_tag').css('visibility', 'visible');	
}

function show_clear()
{
	//show the red bar, and hide it after 1000ms
	$('.red_bar').css('display', 'block');
	$('.red_bar').animate({
		left: 0
	}, 500, function(){
		setTimeout(function() {
			$('.red_bar').animate({
				left: -2000
			},function(){
				$('.red_bar').css('left', 2000);
				$('.red_bar').css('display', 'none');
				show_solved_tag();
			});
		}, 1000);
	});	
}

function show_output () {
	$('#pacman').show();
	$('#code_lang').val($('#lang_bar ul').children('.selected').index());
	$('#code_code').val(editor.getValue());
	$('#new_code').submit();
	$('#notepad').animate({
		left: 460,
		opacity: 0.4
	}, 500);	
	$('#output textarea').focus();
}

function hide_output () {
	$('#notepad').animate({
		left: 0,
		opacity: 1
	}, 500);
}

function scroller_question(data, result)
{
	if ( $('.scroller').length != 0 )
	{
		if(data.length == 1)
		{
			list = data[0].split('\n');
			list.pop();
			num = parseInt(list.pop());
			console.log(num);
			if(num > 0)
				scroll(num);
		}
		else
		{
			num = parseInt(data[i-1]);
			if(num > 0)
				scroll(num);
		}		
	}
}

function code_output(evt, data, status, xhr)
{
	console.log(data);
	$('#output textarea').val('');	
	content = '';
	content += '===== Result =====\n';
	result = data.pop();
	
	content += result;
	content += '\n';
	if(Object.prototype.toString.call(data[0]) == "[object Array]")
		data = data[0];
	for(i=0 ; i<data.length ; i++)
	{
		content += "===== Run #" + (i+1) + " =====\n";
		for (k=0 ; k<data[i].length ; k++)
		{
			content += data[i][k];
		}
		content += '\n';
	}
	scroller_question(data, result);
	
	$('#output textarea').val(content);
	$('#pacman').fadeOut(1000, function(){
		if(result)
			show_clear();
	});
}