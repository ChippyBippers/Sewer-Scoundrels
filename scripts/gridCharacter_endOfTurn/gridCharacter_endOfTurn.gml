//check for any items you may have come across
var item = grid_meeting_getInstance(gx,gy,gridObject_item);
	
if item != noone and ds_list_size(inventory) < inventorySlots {
	var obj = item.object_index;
	
	//store item's relevant info
	ds_list_add(inventory,obj)
	itemMap_scripts[? obj] = item.itemActionScript
	itemMap_sprites[? obj] = item.sprite_index
	
	//remove item from world
	instance_destroy(item)
}

//todo: handle stepping on tiles (staircase, poison, etc)

//todo: apply status effects (poison damage, etc)

//hp regeneration
var hpRate = 0.05;

hpRate *= !tookDamage
//todo: poison disables healing (hpRate = 0)

hp = min(hp+maxHP*hpRate, maxHP)

tookDamage = false
myTurn = false