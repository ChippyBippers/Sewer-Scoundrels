/// @description Insert description here
// You can write your code in this editor
if doARotate{
	draw_sprite_ext(sprite_index,image_index,x+8,y+8,1,1,image_angle,c_white,1)
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
}