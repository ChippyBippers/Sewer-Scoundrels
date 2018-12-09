with(obj_EndMouse)
{
	sprite_index = spr_msLeft;
	image_speed = 6;
	stopX = 128;
	stopY = y;
	move_towards_point(stopX, stopY, image_speed);
}