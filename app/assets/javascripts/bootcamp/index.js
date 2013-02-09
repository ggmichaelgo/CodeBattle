function animate_row (index) 
{
	if(index <= $('.row').length)
	{
		$('.row#'+index).animate({
			opacity: 1.00
		}, 1000, function(){
			
		});
		setTimeout(function(){ animate_row(index+1); }, 200);		
	}
}



$(document).ready(function(){
	// $('#y-axis').animate({
	// 	scrollTop: $('#y-axis')[0].scrollHeight
	// }, 1000);	
	animate_row(1);
});