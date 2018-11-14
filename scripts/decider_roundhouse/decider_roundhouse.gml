var xx = dcos(counter*90),
	yy = dsin(counter*90),
	gxx = gx+xx,
	gyy = gy+yy;

if argument0 {
	if !grid_meeting(gxx,gyy,gridObject_base){
		actionSetup_move(gxx,gyy)
		counter++
	} else {
		actionSetup_move(gx,gy)
	}
} else {
	actionScript = action_move
}