with gridScheduler {
	if ds_queue_empty(worldActionQueue){
		gridScheduler_fullUpdate(argument0)	
	} else {
		var chunk = ds_queue_dequeue(worldActionQueue),
			entity = chunk[0],
			setup = chunk[1],
			args = chunk[2];
		
		show_debug_message("Queue update: Assigning entity ["+string(entity)+"] action "+script_get_name(setup))
		
		with entity {
			execute_actionSetup(setup,args)
			state = gridObject.acting
		}
		
		currentActive++
	}
}