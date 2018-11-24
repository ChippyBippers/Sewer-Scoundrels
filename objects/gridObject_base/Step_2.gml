/// @description Insert description here
// You can write your code in this editor
switch(state){
	case gridObject.acting:
		
		if script_exists(actionScript){
			if script_execute(actionScript){
				//actionScript either does not exist or it has completed its operation
				actionScript = noone
				state = gridObject.idle
				gridScheduler_poke(noone)
			}
			//else: actionScript exists, has been executed, and is not finished
		} else {
			actionScript = noone
			state = gridObject.idle
			gridScheduler_poke(noone)
		}
}