//from one gridObject_base to another gridObject_base
//also provide a path data structure
with gridRouter{
	var fx = argument0.gx,
		fy = argument0.gy,
		tx = argument1.gx,
		ty = argument1.gy,
		path = argument2;
	
	//important: temporarily remove the grid values at their respective positions (otherwise you can't path to them)
	mp_grid_clear_cell(gridMap,fx,fy)
	mp_grid_clear_cell(gridMap,tx,ty)
	
	var works = mp_grid_path(gridMap,path,fx,fy,tx,ty,true);
	
	//equally important: add their values back in
	mp_grid_add_cell(gridMap,fx,fy)
	mp_grid_add_cell(gridMap,tx,ty)
	
	//boolean: did it work or not
	return works
}

show_debug_message("Warning: There is no gridRouter object for pathfinding")
return false