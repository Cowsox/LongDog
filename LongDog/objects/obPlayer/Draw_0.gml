thick = clamp(3000 * (1/distance_to_object(obButt)) + 10, 1, 60);


//draw_line_width_colour(x,y+5,obPlayer_1.x,obPlayer_1.y-10,thick,c_black,c_black)
draw_self()

// Flip image 
if(x < obButt.x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}