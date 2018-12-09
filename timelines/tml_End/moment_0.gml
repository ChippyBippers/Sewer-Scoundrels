with(obj_EndMouse)
{
	sprite_index = spr_msForward;
	image_angle = 180;
	image_speed = 2;
	
	stopX = 271;
	stopY = 363;
	move_towards_point(stopX, stopY, image_speed);
}