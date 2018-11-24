moveIter++

if moveIter>moveTime {
	x = gx*16
	return true
} else {
	x = gx*16 + 4*dcos(moveIter*(360/moveTime))
	return false
}