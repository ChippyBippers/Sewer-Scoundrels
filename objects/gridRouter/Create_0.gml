/// @description holds/uses the motionPlan grid

gridMap = mp_grid_create(0,0,room_width/16,room_height/16,1,1)

with gridLevel {
	var gm = other.gridMap;
	
	for(var j=0;j<ds_grid_height(grid) && j<ds_grid_height(gm);j++){
		for(var i=0;i<ds_grid_width(grid) && i<ds_grid_width(gm);i++){
			if grid[# i,j] mp_grid_add_cell(gm,i,j)
		}
	}
}

if !instance_exists(gridLevel) {
	show_debug_message("instance order is messed up or something (gridRouter can't find gridLevel)")	
}