/// @description Insert description here
// You can write your code in this editor
show_debug_message("Removing "+string(id)+" from the schedule (deletion)")
gridScheduler_remove(id)

with gridRouter{
	if (other.gx>=0 && other.gx<width) &&
	(other.gy>=0 && other.gy<width){
		var good = true;
		var xx = other.gx, yy = other.gy;
		
		with gridLevel{
			if grid[# xx,yy] good = false	
		}
		
		if good mp_grid_clear_cell(gridMap,other.gx,other.gy)	
	}
}


ds_list_destroy(inventory)
ds_map_destroy(itemMap_scripts)
ds_map_destroy(itemMap_sprites)