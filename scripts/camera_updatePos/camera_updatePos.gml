//updates based on target
//(call within self)

var px = target.x - camera_get_view_width(camera)/2,
	py = target.y - camera_get_view_height(camera)/2;

camera_set_view_pos(camera,px,py);