with gridScheduler {
	var nextEntity = entities[| listIter],
		goNow = false;
	
	show_debug_message("Scheduling entity #"+string(listIter))
	
	var chainableAction = action_move,
		theAction = noone;
	
	with nextEntity {
		if state != gridObject.idle {
			show_debug_message("Entity already has something to do! We must be done!")
			//we've looped all the way around, everybody has something to do at the same time somehow
			return
		} 
		if script_exists(deciderScript) then script_execute(deciderScript,false)
		theAction = actionScript
	}
	
	show_debug_message("Entity wants to perform: "+script_get_name(theAction))
	
	var chainable = (theAction = chainableAction),
		pChainable = (previousAction = chainableAction) || (chainable && previousAction = noone);
	
	if (chainable && pChainable) || (!chainable && !pChainable){
		with nextEntity{
			state = gridObject.acting
			script_execute(deciderScript,true)
		}
		currentActive++
		
		listIter++;
		if listIter>=ds_list_size(entities) then listIter = 0
		
		show_debug_message("Entity has been scheduled! There are "+string(currentActive)+" active entities.")
		
		if chainable then {
			previousAction = theAction
			gridScheduler_update() //try to continue the chain!
		}
	} else {
		show_debug_message("Entity has to wait their turn...")
	}
	previousAction = noone
}