//tries to maintain a distance from the player and shoot projectiles.
//these occur on an alternating pattern

if argument0 {
	if counter = 1 then counter = 2
	else if counter = 2 then counter = 1
} else {
	//find player
	var player = noone;
	
	with gridObject_character {
		if deciderScript = decider_player then player = id
	}
	
	if player = noone return [actionSetup_move,[gx,gy]]
	
	if counter = 0 {
		//check for line-of-sight
		show_debug_message("Checking for line-of-sight with player")
		if !grid_collision_line(gx,gy,player.gx,player.gy){
			counter = 1 //advance to moving stage	
		}
	}
	
	var xx = player.gx-gx, yy = player.gy-gy;
	
	if counter = 1 {
		var	dx = 0, dy = 0,
			mag = max(abs(xx),abs(yy));
		//determine which axis you're closer on -> which axis to back up on
		
		if abs(xx)<abs(yy){
			dx = sign(xx) //line up shot on x axis
			if mag<5 then dy = -sign(yy) //increase distance on y axis
		} else if abs(xx)>abs(yy) {
			if mag<5 then dx = -sign(xx) //increase distance on x axis
			dy = sign(yy) //line up shot on y axis	
		} else {
			dx = -sign(xx)	
		}
		
		show_debug_message(string(dx)+", "+string(dy))
		
		return [actionSetup_move,[gx+dx,gy+dy]]
		
	} else if counter = 2 {
		xDir = sign(xx)
		yDir = sign(yy)
		if abs(xx)<abs(yy) xDir = 0
		else yDir = 0
		
		show_debug_message("Schut")
		return [actionSetup_projectile,[gridObject_projectile]]
	}
}

return [actionSetup_move,[gx,gy]]