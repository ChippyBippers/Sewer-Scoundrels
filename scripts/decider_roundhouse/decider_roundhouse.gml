var xx = dcos(counter*90),
	yy = dsin(counter*90),
	gxx = gx+xx,
	gyy = gy+yy;

if !grid_meeting(gxx,gyy,gridObject_base){
	if argument0 counter++
	return [actionSetup_move,[gxx,gyy]]
} else {
	return [actionSetup_move,[gx,gy]]
}
