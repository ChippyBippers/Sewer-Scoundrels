with(obj_MenuGator)
{
	x = room_width/2;
	image_speed = 1;
	stopX = x;
	stopY = inst_5EDD49B0.y/2; // top ladder
	move_towards_point(stopX, stopY, image_speed);
}

