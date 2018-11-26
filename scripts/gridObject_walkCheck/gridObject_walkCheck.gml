//a gridObject calls this with a given dx & dy (-1 to 1) to see if it can walk in that direction
var dx = argument0,
	dy = argument1;

if grid_meeting(dx,dy,gridObject_base){
	return false	
} else if (dx !=0 and dy !=0) and
	grid_meeting(dx,0,gridObject_base) or
	grid_meeting(0,dy,gridObject_base){
	return true		
}