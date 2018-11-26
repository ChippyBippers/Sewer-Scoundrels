var dx = dcos(counter*90),
	dy = dsin(counter*90),
	gxx = gx+dx,
	gyy = gy+dy;

if gridObject_walkCheck(dx,dy){
	if argument0 counter++
	return [actionSetup_move,[gxx,gyy]]
} else {
	return [actionSetup_move,[gx,gy]]
}
