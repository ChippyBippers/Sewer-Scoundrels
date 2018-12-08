if UI.menu_open return;

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
	
}
if keyboard_check_released(vk_shift) or !window_has_focus(){
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
} else if !playerControl_holdAndOrientate{
	if keyboard_check_pressed(vk_space){
		//basicAttack
		comittedAction = actionSetup_basicAttack
		comittedArgs = [xDir,yDir]	
		audio_play_sound(snd_rat_attack, 0, false)
	} else if keyboard_check_pressed(ord("Z")) {
		//use an item
		if itemSelected < ds_list_size(inventory){
			//todo: actual item selection instead of just using the first item
			var item = inventory[| itemSelected];
			ds_list_delete(inventory, itemSelected)
			audio_play_sound(snd_use_item, 0, false)
			
			comittedAction = itemMap_scripts[? item]
		}
	}
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


if keyboard_check_pressed(ord("E")){
	itemSelected += 1
}
else if keyboard_check_pressed(ord("Q")) {
	itemSelected -= 1
}

if itemSelected < 0 {
	itemSelected = inventorySlots - 1
}
else if itemSelected >= inventorySlots {
	itemSelected = 0
}