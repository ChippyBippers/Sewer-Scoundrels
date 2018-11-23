var vectX = keyboard_check(vk_right)-keyboard_check(vk_left),
	vectY = keyboard_check(vk_down)-keyboard_check(vk_up),
	comitted = false;

if (vectX!=0 || vectY!=0){
	var gxx = gx+vectX, gyy = gy+vectY;
	
	if !grid_meeting(gxx,gyy,gridObject_base){
		actionSetup_move([gxx,gyy])
		comitted = true
	}
} else if keyboard_check_pressed(vk_space){
	actionSetup_spinny()
	comitted = true
}

if comitted {
	//update gridScheduler with what the player's actually doing
	gridScheduler_playerPoke(actionScript)	
}