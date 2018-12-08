with(inst_3E5C511F) // BG 1: Bug on the left at the end of animation
{
	stopX = inst_1D985147.x; // bottom ladder
	stopY = inst_1D985147.y;
	sprite_index = spr_bgForward;
	image_speed = 2.5;
	move_towards_point(stopX, stopY, image_speed);
}

with(inst_70EF0A61) // BG 2: Bug on the right at the end of animation
{
	stopX = inst_5EDD49B0.x; // top ladder
	stopY = inst_5EDD49B0.y;
	sprite_index = spr_bgBack;
	image_speed = 2.5;
	move_towards_point(stopX, stopY, image_speed);
}