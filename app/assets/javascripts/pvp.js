var coder = {};

$(document).ready(function(){
	coder =
	{
		battle_id: $('#code_battle_id').val(),
		user_code: {
			code: ' ',
			lang: ' ',
			q_id: 0
		},
		state: 'not_ready'
	};
});

function set_question(content)
{
	$('#question')[0].innerHTML = content;
	question_code = ace.edit("question_code");
	question_code.setTheme("ace/theme/monokai");
	question_code.getSession().setMode("ace/mode/java");
	coder['user_code'].q_id = -1;
	setTimeout(function() {
		show_question();
	}, 1000);
	
}

function update () 
{
	coder['user_code'].code = editor.getValue();
	coder['user_code'].lang = $('#lang_bar li.selected')[0].innerHTML;
	$.ajax({
		type: 'GET',
		url: '/pvp/update_user',
		data: coder,
		error: function(){
			console.log('update error');
		}
	}).done(function(data){
		opponent_code.setValue(data['opponent'].code);
		opponent_code.clearSelection();
		$('#opponent_nametag')[0].innerHTML = data['opponent'].username;
		
		if(data['question'])
			set_question(data['question']);
		
		if(data['state'] == 'finish')
		{
			if(data['opponent'].username == data['winner'].username)
				show_lost();
			else
				show_clear();
			clearInterval(update_timer);
		}
	});
}
var update_timer = setInterval(update,1000);

function show_output () {
	$('#pacman').show();
	$('#code_lang').val($('#lang_bar ul').children('.selected').index());
	$('#code_code').val(editor.getValue());
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

function show_question () 
{
	$('#opponent_panel').animate({
		left: -485		
	});
	$('#opponent_code').animate({
		opacity: 0.4
	});
}


function hide_question () 
{
	$('#opponent_panel').animate({
		left: 0
	});
	$('#opponent_code').animate({
		opacity: 1
	});
}

function show_lost()
{
	$('.blue_bar').css('display', 'block');
	$('.blue_bar').animate({
		left: 0
	}, 500);
	setTimeout(function() {
		$('.blue_bar').css('display', 'none');
		hide_question();
	}, 3000);
}

function show_clear()
{
	$('.red_bar').css('display', 'block');
	$('.red_bar').animate({
		left: 0
	}, 500);
	setTimeout(function() {
		$('.red_bar').css('display', 'none');
		hide_question();
	}, 3000);
}
