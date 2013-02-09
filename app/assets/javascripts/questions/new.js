var io = [];
$(function() {
	$("#lang_bar li").click(function(){
		$(this).addClass("selected").sibloutgs().removeClass("selected");
	});

	setInterval(function(){
		code = $('#code').val();
		$('#question')[0].innerHTML = code;
	}, 1000);
});

function add_io()
{
	input = $('#input').val();
	output = $('#output').val();
	io.push({
		input: input,
		output: output
	});
	$('#input').val("");
	$('#output').val("");
}

function submit()
{
	inputs = [];
	outputs = [];
	name = 'no name';
	for (var i = 0; i < io.length ; i++)
	{
		inputs.push(io[i]['input']);
		outputs.push(io[i]['output']);
	}

	data = {
		inputs: inputs,
		outputs: outputs,
		name: name,
		content: $('#question')[0].innerHTML,
		point: 1
	};

	$.ajax({
		type: "POST",
		url: '/questions',
		dataType: 'json',
		data: {
			question: data 
		},
		success: function()
		{
			alert(1);
		}		
	});
}