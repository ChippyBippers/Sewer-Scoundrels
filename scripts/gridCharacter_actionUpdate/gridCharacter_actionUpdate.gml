if !actionUpdated{
	if script_exists(actionScript){
		var result = 0;
			
		do {
			result = script_execute(actionScript)
		} until result != 2
			
		if (result) {
			//actionScript has completed its operation
			actionScript = noone
			state = gridObject.idle
			
			//reset sprite
			if sprite_exists(spriteRef_idle) then sprite_index = spriteRef_idle
			//update personal shader
			gridCharacter_updateShaders()
			
			var schedulerID = gridScheduler.id;
			
			if myTurn then gridCharacter_endOfTurn()
				
			if gridScheduler.id = schedulerID then gridScheduler_poke(noone)
		}
		//else: actionScript exists, has been executed, and is not finished
	} else {
		actionScript = noone
		state = gridObject.idle
		gridScheduler_poke(noone)
	}
	
	actionUpdated = true
	
	return true
}

return false