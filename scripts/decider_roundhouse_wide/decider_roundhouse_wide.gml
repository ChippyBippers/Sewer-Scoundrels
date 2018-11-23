var xx = dcos(floor(counter)*90),
	yy = dsin(floor(counter)*90),
	gxx = gx+xx,
	gyy = gy+yy;

//show_debug_message("Roundhouse: trying to go from "+string_cartesian(gx,gy)+" to "+string_cartesian(gxx,gyy))

if !grid_meeting(gxx,gyy,gridObject_base){
	counter+=0.5
	return [actionSetup_move,[gxx,gyy]]
} else {
	return [actionSetup_move,[gx,gy]]
}