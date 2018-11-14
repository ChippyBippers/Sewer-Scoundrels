var xx = dcos(floor(counter)*90),
	yy = dsin(floor(counter)*90),
	gxx = gx+xx,
	gyy = gy+yy;

//show_debug_message("Roundhouse: trying to go from "+string_cartesian(gx,gy)+" to "+string_cartesian(gxx,gyy))

if !grid_meeting(gxx,gyy,gridObject_base){
	if argument0{
		counter+=0.5
		actionSetup_move(gxx,gyy)
	} else {
		actionScript = action_move	
	}
} else {
	if argument0{
		actionSetup_move(gx,gy)	
	} else {
		actionScript = action_move
	}
}