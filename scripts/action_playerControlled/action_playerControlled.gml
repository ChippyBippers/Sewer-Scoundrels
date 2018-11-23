var vectX = keyboard_check(vk_right)-keyboard_check(vk_left),
	vectY = keyboard_check(vk_down)-keyboard_check(vk_up),
	comittedAction = noone,
	comittedArgs = noone;

if (vectX!=0 || vectY!=0){
	var gxx = gx+vectX, gyy = gy+vectY;
	
	if !grid_meeting(gxx,gyy,gridObject_base){
		comittedAction = actionSetup_move
		comittedArgs = [gxx,gyy]
	}
} else if keyboard_check_pressed(vk_space){
	comittedAction = actionSetup_spinny
}

if comittedAction != noone {
	if comittedArgs != noone then
		script_execute(comittedAction,comittedArgs)
	else
		script_execute(comittedAction)
	
	//debug_spinOthers();//testing worldActionQueue
	
	//update gridScheduler with what the player's actually doing
	with gridScheduler{
		currentActive++
		gridScheduler_poke(comittedAction)	
	}
}