with(obj_EndMouse)
{
	sprite_index = spr_msRight;
	image_speed = 6;
	stopX = 346;
	stopY = y;
	move_towards_point(stopX, stopY, image_speed);
}