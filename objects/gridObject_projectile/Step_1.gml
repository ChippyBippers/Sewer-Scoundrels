/// @description Insert description here
// You can write your code in this editor

x = lerp(gx,gx+xDir,moveIter/moveTime)*16
y = lerp(gy,gy+yDir,moveIter/moveTime)*16

if moveIter>=moveTime {
	iterations++
	
	if iterations=maxIterations instance_destroy()
	
	moveIter = 0
	gx+=xDir
	gy+=yDir
	
	//show_debug_message(string_cartesian(gx,gy))
	
	//collision checks
	var gObj = grid_meeting_getInstance(gx,gy,gridObject_character);
	
	if instance_exists(gObj){
		//if instance_exists(parent) gridObject_applyDamage(parent,gObj)
		script_execute(projectileScript,gObj)
		
		instance_destroy()
	} else {
		with gridLevel {
			if grid[# other.gx,other.gy] then instance_destroy(other)	
		}
	}
}

moveIter++