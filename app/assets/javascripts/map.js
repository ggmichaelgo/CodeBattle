function fill(line)
{
	//fill the string with " "
	while(line.length < $('#map tr').length)
		line += " ";
	return line;
}

function set_cell(row, col, c)
{
	//multi-thread bug....? I have to user "$($($("#map tr")[row]).children()[col])"
	color = 'rgb(84, 84, 84)';
	if(c != " ")
		color = 'rgb(216, 0, 0)';
		
	cell = $($($("#map tr")[row]).children()[col]);	
	if(cell.css('background-color') != color)
	{
		cell.animate({
			'background-color': color,
			textIndent: 0
		},{
			step: function(now, fx){
				$(this).css('-webkit-transform','rotateX(-' + now + 'deg)');
				$(this).css('-moz-transform','rotateX(-' + now + 'deg)');
				$(this).css('transform','rotateX(-' + now + 'deg)');
			},
			complete: function(){
				$(this).css('textIndent', '90px');
			}
		});
	}
}

function show_question_animation(str_map)
{
	lines = str_map.split("\n");
	for (y=0 ; y<lines.length ; y++) 
	{
		line = lines[y];
		line = fill(line);
		for(x = 0 ; x<$('#map tr').length ; x++)
			set_cell(y,x,line.charAt(x));
	}
	for( ; y < $('#map tr').length ; y++)
	{
		for(x = 0 ; x<$('#map tr').length ; x++)
			set_cell(y,x, " ");
	}
}

function setExampleCode()
{
	code = 'import java.util.Scanner;\nclass Square\n{\n	public static void main(String[] args)\n	{\n		// I wrote this for you :)\n		Scanner input = new Scanner(System.in); \n		int width = input.nextInt();\n		int height = width;\n		for(int y=0 ; y<height ; y++)\n		{\n			for(int x=0 ; x<width ; x++)\n			{\n				//It is not println\n				//This will keep print in same line		\n				System.out.print("*");\n			}\n			System.out.println();\n		}\n	}\n}';
	editor.setValue(code);
}

$(document).ready(function(){
	table = $('#map');
	for(y=0 ; y<10 ; y++)
	{			
		row = $('<tr></tr>');
		for(x=0 ; x<10 ; x++)
			row = row.append($('<td></td>'));
		table = table.append($(row));
	}
});

