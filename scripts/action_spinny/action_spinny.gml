spinnyIter++
if spinnyIter>=spinnyTime {
	angle = 0
	return true	
} else {
	angle=spinnyIter*spinnyRate
	return false
}