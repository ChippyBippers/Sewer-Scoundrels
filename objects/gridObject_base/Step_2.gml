/// @description Insert description here
// You can write your code in this editor
switch(state){
	case gridObject.acting:
		if script_exists(actionScript){
			if script_execute(actionScript){
				actionScript = noone
				state = gridObject.idle
				gridScheduler_poke()
			}
		} else {
			actionScript = noone
			state = gridObject.idle
			gridScheduler_poke()
			show_debug_message(string(id)+" had no action script. Their turn was aborted.")	
		}
		break;
}