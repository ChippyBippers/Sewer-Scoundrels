/// @description use poison

if(scr_CheckForItem(inventory, obj_Poison)){
	script_execute(ds_map_find_value(itemMap, obj_Poison), self, obj_Player2);
}
else{
	show_debug_message("Item doesn't exist in inventory");
}