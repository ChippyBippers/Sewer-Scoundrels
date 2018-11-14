draw_set_color(c_red)
for(var i=0;i<room_width/width;i++){
	draw_line(width*(i+1),0,width*(i+1),room_height)	
}

draw_set_color(c_blue)
for(var i=0;i<room_height/height;i++){
	draw_line(0,height*(i+1),room_width,height*(i+1))	
}