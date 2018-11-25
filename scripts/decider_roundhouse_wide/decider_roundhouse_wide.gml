if argument0 {
	counter+=0.5
	return
} else {
	var xx = dcos(floor(counter)*90),
		yy = dsin(floor(counter)*90),
		gxx = gx+xx,
		gyy = gy+yy;

	if !grid_meeting(gxx,gyy,gridObject_base){
		return [actionSetup_move,[gxx,gyy]]
	} else {
		return [actionSetup_move,[gx,gy]]
	}
}