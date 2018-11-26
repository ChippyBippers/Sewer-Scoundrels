var vectX = keyboard_check(vk_right)-keyboard_check(vk_left),
	vectY = keyboard_check(vk_down)-keyboard_check(vk_up),
	comittedAction = noone,
	comittedArgs = noone;

if keyboard_check_pressed(vk_shift){
	playerControl_holdAndOrientate = true
	playerControl_orientator = instance_create_layer(x,y,layer,gridOrientationRenderer)
	
	with playerControl_orientator{
		angle = other.facingAngle
	}
	
} else if keyboard_check_released(vk_shift){
	playerControl_holdAndOrientate = false
	
	with playerControl_orientator{
		instance_destroy()
	}
	playerControl_orientator = noone
}

if (vectX!=0 || vectY!=0){
	var gxx = gx+vectX, gyy = gy+vectY;
	
	xDir = vectX
	yDir = vectY
	facingAngle = angleFromDir(xDir,yDir)
	
	with playerControl_orientator{
		angle = other.facingAngle
	}
	
	if !playerControl_holdAndOrientate && gridObject_walkCheck(vectX,vectY){
		comittedAction = actionSetup_move
		comittedArgs = [gxx,gyy]
	}
} else if keyboard_check_pressed(vk_space) and !playerControl_holdAndOrientate{
	comittedAction = actionSetup_basicAttack
	comittedArgs = [xDir,yDir]
}

if comittedAction != noone {
	if comittedArgs != noone then
		script_execute(comittedAction,comittedArgs)
	else
		script_execute(comittedAction)
	
	show_debug_message("playerControl is executing "+script_get_name(comittedAction))
	
	//update gridScheduler with what the player's actually doing
	with gridScheduler{
		//finish one action, start another
		gridScheduler_poke(comittedAction)
		currentActive++
	}
}