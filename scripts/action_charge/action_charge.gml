x = lerp(gx,gx+xDir,moveIter/(moveTime/4))*16
y = lerp(gy,gy+yDir,moveIter/(moveTime/4))*16

if moveIter>=(moveTime/4) {
	moveCount++
	moveIter = 0
	gx+=xDir
	gy+=yDir

	//show_debug_message(string_cartesian(gx,gy))
	
	//collision checks
	var gObj = grid_meeting_getInstance(gx+xDir,gy+yDir,gridObject_character);
	
	if instance_exists(gObj){
		gridObject_applyDamage(id,gObj)
		return true
	} else {
		with gridLevel {
			if grid[# other.gx,other.gy] then instance_destroy(other)	
		}
	}
	
	if moveCount>=moveLimit then return true
}

moveIter++

return false