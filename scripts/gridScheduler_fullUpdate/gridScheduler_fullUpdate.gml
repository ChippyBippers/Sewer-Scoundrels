with gridScheduler {
	var nextEntity = entities[| listIter];
	
	show_debug_message("Scheduling entity #"+string(listIter)+" ("+string(nextEntity)+")")
	
	var chainableAction = actionSetup_move,
		actionChunk = noone,
		actionSetup = noone,
		actionArgs = noone,
		previousAction = argument0;
	
	with nextEntity {
		if state != gridObject.idle {
			show_debug_message("Entity already has something to do! We must be done!")
			//we've looped all the way around, everybody has something to do at the same time somehow
			return
		} 
		if script_exists(deciderScript)
		{
			//determine what the object wants to do
			var chunk = script_execute(deciderScript,false);
			actionSetup = chunk[0];
			actionArgs = chunk[1];
		}
	}
	
	show_debug_message("Entity wants to perform: "+script_get_name(actionSetup)+ " (previous action is "+script_get_name(previousAction)+")")
	
	var chainable = (actionSetup == chainableAction),
		pNone = (previousAction == noone),
		pChainable = pNone? false: (previousAction == chainableAction);
	
	if (chainable && (pNone || pChainable)) ||
	(!chainable && pNone)
	{
		//increment important variables
		currentActive++
		listIter++;
		if listIter>=ds_list_size(entities) {
			listIter = 0
			turn++
			show_debug_message("/// Turn "+string(turn)+" ///")
		}
		
		show_debug_message("Entity has been scheduled! There are "+string(currentActive)+" active entities.")
		
		//schedule the entity
		with nextEntity{
			//give them the o-k
			script_execute(deciderScript,true);
			
			state = gridObject.acting
			myTurn = true //enables end-of-turn checks
			
			if actionSetup != noone {
				if actionArgs = noone then
					script_execute(actionSetup);//execute with no args
				else
					script_execute(actionSetup,actionArgs);//execute with args
			
				//attempt an action update
				gridCharacter_actionUpdate()
			}
		}
		
		//perform a chain if possible
		if chainable then {
			show_debug_message("Scheduler is attemtping to chain to an additional entity")
			gridScheduler_fullUpdate(actionSetup) //try to continue the chain!
		}
	} else {
		show_debug_message("Entity has to wait their turn...")
	}
	previousAction = noone
}