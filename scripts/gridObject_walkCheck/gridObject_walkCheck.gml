//a gridObject calls this with a given dx & dy (-1 to 1) to see if it can walk in that direction
var dx = argument0,
	dy = argument1,
	gxx = gx+dx,
	gyy = gy+dy;

//grid geometry checking
with gridLevel {
	if 
		//basic check
		grid[# gxx,gyy] or
		//diagonal movement check (OR; can be obstructed from just one direction)
		((dx !=0 and dy !=0) and
		(grid[# gxx,other.gy] or grid[# other.gx,gyy]))

	{
		return false
	}
}


//instance checking
if 
	//basic check
	grid_meeting(gxx,gyy,gridObject_base) or
	//diagonal movement check (AND; must be fully obstructed)
	((dx !=0 and dy !=0) and
	(grid_meeting(gx,gyy,gridObject_base) and grid_meeting(gxx,gy,gridObject_base)))
{
	return false
}

//no obstruction detected

return true