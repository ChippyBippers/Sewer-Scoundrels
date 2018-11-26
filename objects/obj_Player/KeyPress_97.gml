/// @description use potion

if(scr_CheckForItem(inventory, obj_Potion)){
	script_execute(ds_map_find_value(itemMap, obj_Potion), self);
	show_debug_message(string(hpLevel))
}
else{
	show_debug_message("Item doesn't exist in inventory");
}