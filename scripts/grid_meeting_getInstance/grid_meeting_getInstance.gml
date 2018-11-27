//grid meeting but it actually returns the instance (ought to only be 1 if any)

var gxx = argument0,
	gyy = argument1,
	obj = argument2;

with obj {
	if gx = gxx and gy = gyy {
		//show_debug_message("There's an entity at coordinate "+string_cartesian(gxx,gyy))
		return id
	}
}

return noone