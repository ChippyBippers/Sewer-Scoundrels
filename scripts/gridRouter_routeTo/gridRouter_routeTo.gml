//from one gridObject_base to another gridObject_base
//also provide a path data structure
with gridRouter{
	var fx = argument0.gx,
		fy = argument0.gy,
		tx = argument1.gx,
		ty = argument1.gy,
		path = argument2;
	
	//boolean: did it work or not
	return mp_grid_path(gridMap,path,fx,fy,tx,ty,true)
}

show_debug_message("Warning: There is no gridRouter object for pathfinding")
return false