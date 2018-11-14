/// @description Insert description here
// You can write your code in this editor
if  state = gridObject.moving
	{draw_set_color(c_red)}
else draw_set_color(c_green)
draw_rectangle(x,y,x+16,y+16,false)

draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,1)