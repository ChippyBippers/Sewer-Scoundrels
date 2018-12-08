with(inst_3E5C511F) // BG 1 (Bottom): Bug on the left at the end of animation
{
	x = 0 - sprite_width;
	y = 246;
	sprite_index = spr_bgRight;
	image_speed = 1;
	image_alpha = 1;
	stopX = sprite_width*2;
	stopY = y;
	
	move_towards_point(stopX,stopY,image_speed);
	
}

with(inst_31737FA) // ER 1: Enemy Rat on the left at the end of animation
{
	x = 0 - sprite_width;
	y = 182;
	sprite_index = spr_erRight;
	image_speed = 1;
	image_alpha = 1;
	stopX = sprite_width*2;
	stopY = y;
	
	move_towards_point(stopX,stopY,image_speed);
	
}

with(inst_70EF0A61) // BG 2 (Top): Bug on the right at the end of animation
{
	x = room_width + sprite_width;
	y = 182;
	sprite_index = spr_bgLeft;
	image_speed = 1;
	image_alpha = 1;
	stopX = room_width - sprite_width*2;
	stopY = y;
	
	move_towards_point(stopX,stopY,image_speed);
	
}

with(inst_20171621) // ER 2: Enemy Rat on the right at the end of animation
{
	x = room_width + sprite_width;
	y = 246;
	sprite_index = spr_erLeft;
	image_speed = 1;
	image_alpha = 1;
	stopX = room_width - sprite_width*2;
	stopY = y;
	
	move_towards_point(stopX,stopY,image_speed);
	
}