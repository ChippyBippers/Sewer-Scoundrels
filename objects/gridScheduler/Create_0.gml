entities = ds_list_create()
worldActionQueue = ds_queue_create()

with gridObject_character{
	ds_list_add(other.entities,id);	
}
ds_list_sort(entities,true)

listIter = 0
turn = 0

currentActive = 0
currentDone = 0

previousAction = noone

show_debug_message("/// Turn "+string(turn)+" ///")

gridScheduler_fullUpdate(noone)