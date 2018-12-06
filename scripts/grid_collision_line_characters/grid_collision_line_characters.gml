var obj1 = argument0,
	obj2 = argument1,
	gx1 = obj1.gx,
	gy1 = obj1.gy,
	gx2 = obj2.gx,
	gy2 = obj2.gy;

//build a line equation from p1 to p2
var dx = gx2-gx1,
	dy = gy2-gy1,
	slope,
	length,
	dsign,
	horizontal = true;

//show_debug_message(string(dx)+", "+string(dy))

if dx = 0 && dy = 0 {
	return grid_collision_point(gx1,gy2)
} else if abs(dx)<abs(dy) {
	horizontal = false
	slope = dx/dy
	length = abs(dy)
	dsign = sign(dy)
} else {
	slope = dy/dx
	length = abs(dx)
	dsign = sign(dx)
}

for(var i=0;i<=length;i++){
	var xx = gx1 + (horizontal? i: i*slope) * dsign,
		yy = gy1 + (horizontal? i*slope: i) * dsign;
		
	if grid_collision_point(xx,yy) return true
	
	with gridObject_character {
		if (gx = xx && gy = yy)	and
			(id != obj1 && id != obj2)
			return true
	}
}

//show_debug_message("No collision detected; Slope: "+string(slope)+", Length: "+string(length))
return false