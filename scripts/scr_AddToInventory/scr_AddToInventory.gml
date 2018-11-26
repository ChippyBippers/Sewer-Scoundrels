var itemInstance = argument0,
	currentPlayer = argument1;
var itemObject = argument0.object_index,
	script;

switch(itemObject){
	
	case obj_Potion.object_index: 
		script = scr_UsePotion;
		break;
	case obj_Poison.object_index:
		script = scr_UsePoison;
		break;
}
	

ds_list_add(currentPlayer.inventory, itemObject);
ds_map_set(currentPlayer.itemMap, itemObject, script);

/*
show_debug_message(currentPlayer);
for(var i = 0; i < ds_list_size(currentPlayer.inventory); i ++)
{
	show_debug_message("Iteration: " + string(i));
	show_debug_message("Item index: " + string(ds_list_find_value(currentPlayer.inventory, i)));
}
show_debug_message("\n");
*/