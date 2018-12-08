with(obj_MenuMouse)
{
	sprite_index = spr_msRight;
	image_speed = 3;
	stopX = obj_MenuGator.x;
	stopY = y;
	move_towards_point(stopX, stopY, image_speed);
}