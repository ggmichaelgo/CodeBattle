$(document).ready(function(){
	$('#new_code').bind("ajax:success", code_output)
});

function code_output(evt, data, status, xhr)
{
	$('#output').val(JSON.stringify(data));
}