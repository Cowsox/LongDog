function draw_healthbar_ext(x1, y1, x2 ,y2, amount, showback, showborder, colour){
	// draw outline
	if (showborder) {draw_rectangle(x1-5, y1-5, x2+5, y2+5, false)}
	
	// draw background
	if (showback) {draw_rectangle_colour(x1, y1, x2, y2, c_grey, c_grey, c_grey, c_grey, false)}
	
	var bar = (x2 - x1) * amount;
	
	// draw health bar
	draw_rectangle_colour(x1, y1, x1 + bar, y2, colour, colour, colour, colour, false);
}

function sdbm(var1, var2){
	var str=""
	for (var i = 0; i < argument_count; i++){
		str = str + string(argument[i]) + "#"
	}
	show_debug_message(str)
}