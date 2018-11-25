with gridScheduler {
	var nextEntity = entities[| listIter],
		goNow = false;
	
	show_debug_message("Scheduling entity #"+string(listIter))
	
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
	
	show_debug_message("Entity wants to perform: "+script_get_name(actionSetup))
	
	var chainable = (actionSetup = chainableAction),
		pChainable = (previousAction = chainableAction) || (chainable && previousAction = noone);
	
	if actionSetup = noone || (chainable && pChainable) || (!chainable && !pChainable) {
		if script_exists(actionSetup) then with nextEntity{
			//give them the o-k
			script_execute(deciderScript,true);
			
			state = gridObject.acting
			
			if actionArgs = noone then
				script_execute(actionSetup);//execute with no args
			else
				script_execute(actionSetup,actionArgs);//execute with args
		}
		
		currentActive++
		
		listIter++;
		if listIter>=ds_list_size(entities) then listIter = 0
		
		show_debug_message("Entity has been scheduled! There are "+string(currentActive)+" active entities.")
		
		if chainable then {
			gridScheduler_fullUpdate(actionSetup) //try to continue the chain!
		}
	} else {
		show_debug_message("Entity has to wait their turn...")
	}
	previousAction = noone
}