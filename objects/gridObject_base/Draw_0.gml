/// @description Insert description here
// You can write your code in this editor
if  state = gridObject.moving
	{draw_set_color(c_red)}
else draw_set_color(c_green)
draw_rectangle(x,y,x+15,y+15,false)

draw_sprite_ext(sprite_index,image_index,x,y,1,1,renderAngle,c_white,1)
draw_sprite_ext(spr_directionIndicator,0,x+8+12*xDir,y+8+12*yDir,1,1,facingAngle,c_white,1)