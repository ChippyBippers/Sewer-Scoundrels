if(timeline_running)
{
	timeline_running = false;
	
	// Bug 1
	inst_3E5C511F.speed = 0;
	inst_3E5C511F.image_speed = 1;
	inst_3E5C511F.x = 91;
	inst_3E5C511F.y = 246; 
	inst_3E5C511F.sprite_index = spr_bgRight;
	inst_3E5C511F.image_alpha = 1
	
	// Bug 2
	inst_70EF0A61.speed = 0;
	inst_70EF0A61.image_speed = 1;
	inst_70EF0A61.x = 421;
	inst_70EF0A61.y = 182; 
	inst_70EF0A61.sprite_index = spr_bgLeft;
	inst_70EF0A61.image_alpha = 1
	
	// ER 1
	inst_31737FA.speed = 0;
	inst_31737FA.image_speed = 1;
	inst_31737FA.x = 91;
	inst_31737FA.y = 182; 
	inst_31737FA.sprite_index = spr_erRight;
	
	// ER 2
	inst_20171621.speed = 0;
	inst_20171621.image_speed = 1;
	inst_20171621.x = 421;
	inst_20171621.y = 246; 
	inst_20171621.sprite_index = spr_erLeft;

	obj_MenuGator.speed = 0;
	obj_MenuGator.image_speed = 1;
	obj_MenuGator.x = 256;
	obj_MenuGator.y = 43;
	
	obj_MenuMouse.speed = 0;
	obj_MenuMouse.x = 252;
	obj_MenuMouse.y = 192;
	obj_MenuMouse.sprite_index = spr_msIdle;
	
	instance_create_layer(0,0,"Instances", obj_Title);
	obj_Title.image_alpha = 1;
	
	instance_create_layer(0,0,"Instances", obj_Enter);
}
else
{
	room_goto(room0);
}