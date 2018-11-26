/// @description holds/uses the motionPlan grid

width = room_width/16
height = room_height/16
gridMap = mp_grid_create(0,0,width,height,1,1)
var gm = gridMap;

with gridLevel {
	
	for(var j=0;j<ds_grid_height(grid) && j<ds_grid_height(gm);j++){
		for(var i=0;i<ds_grid_width(grid) && i<ds_grid_width(gm);i++){
			if grid[# i,j] mp_grid_add_cell(gm,i,j)
		}
	}
}

with gridObject_character {
	if (gx>=0 && gx<other.width) &&
	(gy>=0 && gy<other.width) then
	mp_grid_add_cell(gm,gx,gy)	
}

if !instance_exists(gridLevel) {
	show_debug_message("instance order is messed up or something (gridRouter can't find gridLevel)")	
}