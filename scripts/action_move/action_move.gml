moveIter++

if moveIter>moveTime {
	//put the shit HERE
	return true
} else {
	x = lerp(pgx*16,gx*16,moveIter/moveTime)
	y = lerp(pgy*16,gy*16,moveIter/moveTime)
	
	if cameraFollow then camera_updatePos(baseCamera)
	
	return false
}