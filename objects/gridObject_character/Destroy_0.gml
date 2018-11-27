/// @description Insert description here
// You can write your code in this editor
show_debug_message("Removing "+string(id)+" from the schedule (deletion)")
gridScheduler_remove(id)

ds_list_destroy(inventory)
ds_map_destroy(itemMap_scripts)
ds_map_destroy(itemMap_sprites)