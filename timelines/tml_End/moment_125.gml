with(obj_EndMouse)
{
	image_speed = 2;
	
	stopX = room_width + sprite_width;
	stopY = y;
	move_towards_point(stopX, stopY, image_speed);
}