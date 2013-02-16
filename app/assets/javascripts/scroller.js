var number = "0000"
function change_number(i , num)
{
	$($('.digit')[i]).animate({
		top: -108*num
	}, 80);
}
function scroll(target)
{
	if (target > 9999) target = 0;
	if (target < 0) target = 0;
	target = target.toString();
	while(target.length < 4)
		target = '0' + target;

	console.log(target);
	for(i=target.length-1 ; i>=0 ; i--)
	{
		num = parseInt(number[i]);
		console.log(i + ' : ' + target[i]);
		while(num != parseInt(target[i]))
		{
			num++;
			if(num == 10)
				num = 0;
			change_number((4-target.length)+i, num);
		}
		number[i] = num.toString();
	}
	number = target;
	return 1;
}