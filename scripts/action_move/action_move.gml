moveIter++

if moveIter>moveTime {
	return true
} else {
	x = lerp(pgx*16,gx*16,moveIter/moveTime)
	y = lerp(pgy*16,gy*16,moveIter/moveTime)
	return false
}