/// @description Insert description here
// You can write your code in this editor
var sxx = 0;

if image_xscale = -1 {
	sxx = -sprite_width	
}

draw_sprite_ext(sprite_index,image_index,x+sxx,y,image_xscale,1,renderAngle,c_white,1)
//draw_sprite_ext(spr_directionIndicator,0,x+8+12*xDir,y+8+12*yDir,1,1,facingAngle,c_white,1)



/*
if hp<maxHP{
	draw_set_color(c_maroon)
	draw_text(x,y-16,string(hp))	
}
*/