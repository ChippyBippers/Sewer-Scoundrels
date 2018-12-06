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
			counter = 1 //advance to moving & shooting stage	
		}
	}
	
	var xx = player.gx-gx, yy = player.gy-gy,
		mag = max(abs(xx),abs(yy));
	
	if counter = 1 {
		
		if grid_collision_line(gx,gy,player.gx,player.gy){
			counter = 0 //go back to the Sit Stage	
		} else if mag < 10 and 
			(xx == 0 || yy == 0 || abs(xx) == abs(yy)) and
			!grid_collision_line_characters(id,player.id)
		{
			xDir = sign(xx)
			yDir = sign(yy)
		
			//show_debug_message("Schut")
			return [actionSetup_projectile,[gridObject_projectile]]
		} else {
			//line-of-sight but not lined up for a shot = moving to try and shoot next time
		
			var	xxx = sign(xx), yyy = sign(yy),
				dx = 0, dy = 0;
			//determine which axis you're closer on -> which axis to back up on
		
			if abs(xx)<abs(yy){
				dx = xxx //line up shot on x axis
				if mag<=4 and gridObject_walkCheck(dx,-yyy) then dy = -yyy //increase distance on y axis
			} else if abs(xx)>abs(yy) {
				if mag<=4 and gridObject_walkCheck(-xxx,dy)then dx = -xxx //increase distance on x axis
				dy = yyy //line up shot on y axis	
			}
		
			//show_debug_message(string_cartesian(dx,dy))
		
			if !gridObject_walkCheck(dx,dy) {
				dx = 0
				dy = 0
			}
		
			return [actionSetup_move,[gx+dx,gy+dy]]
		}
	} else if counter = 2 {
		//just pause for this alternating turn
		return [actionSetup_move,[gx,gy]]
	}
}

return [actionSetup_move,[gx,gy]]