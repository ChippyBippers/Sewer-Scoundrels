//updates provided camera (object)
with argument0{
	if instance_exists(target){
		var px = target.x+8 - camera_get_view_width(camera)/2,
			py = target.y+8 - camera_get_view_height(camera)/2;

		camera_set_view_pos(camera,px,py);
	}
}