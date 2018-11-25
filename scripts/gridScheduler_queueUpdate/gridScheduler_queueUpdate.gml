with gridScheduler {
	if ds_queue_empty(worldActionQueue){
		gridScheduler_fullUpdate(argument0)	
	} else {
		var chunk = noone,
			entity = noone,
			setup = noone,
			args = noone;
		
		do{
			chunk = ds_queue_dequeue(worldActionQueue)
			entity = chunk[0]
			setup = chunk[1]
			args = chunk[2]
		} until instance_exists(entity) or ds_queue_empty(worldActionQueue)
		
		if instance_exists(entity){
			show_debug_message("Queue update: Assigning entity ["+string(entity)+"] action "+script_get_name(setup))
		
			with entity {
				execute_actionSetup(setup,args)
				state = gridObject.acting
			}
		
			currentActive++
		} else {
			//the only entity(ies) put in the queue have all since been destroyed... call an update?
			gridScheduler_fullUpdate(argument0)
		}
	}
}