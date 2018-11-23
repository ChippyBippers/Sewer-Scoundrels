entities = ds_list_create()

with gridObject_base{
	ds_list_add(other.entities,id);	
}

listIter = 0
currentActive = 0
currentDone = 0

previousAction = noone

gridScheduler_update(noone)