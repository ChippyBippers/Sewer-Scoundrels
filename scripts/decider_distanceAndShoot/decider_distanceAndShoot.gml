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
	
	var xx = player.gx-gx, yy = player.gy-gy,
		mag = max(abs(xx),abs(yy));
	
	if counter = 1 {
		var	xxx = sign(xx), yyy = sign(yy),
			dx = 0, dy = 0;
		//determine which axis you're closer on -> which axis to back up on
		
		if abs(xx)<abs(yy){
			dx = xxx //line up shot on x axis
			if mag<=4 then dy = -yyy //increase distance on y axis
		} else if abs(xx)>abs(yy) {
			if mag<=4 then dx = -xxx //increase distance on x axis
			dy = yyy //line up shot on y axis	
		}
		
		if grid_collision_point(gx+dx,gy+dy) or grid_meeting(gx+dx,gy+dy,gridObject_character) {
			dy = 0
		}
		if grid_collision_point(gx+dx,gy+dy) or grid_meeting(gx+dx,gy+dy,gridObject_character) {
			dx = 0
		}
		
		//show_debug_message(string_cartesian(dx,dy))
		
		return [actionSetup_move,[gx+dx,gy+dy]]
		
	} else if counter = 2 {
		if grid_collision_line(gx,gy,player.gx,player.gy){
			counter = 0 //go back to the Sit Stage	
			
		} else if mag < 10 and (xx == 0 || yy == 0 || xx == yy) {
			xDir = sign(xx)
			yDir = sign(yy)
		
			//show_debug_message("Schut")
			return [actionSetup_projectile,[gridObject_projectile]]
		}
		return [actionSetup_move,[gx,gy]]	
	}
}

return [actionSetup_move,[gx,gy]]