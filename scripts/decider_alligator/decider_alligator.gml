///intended behavior:
/*
tries to line up on horizontal, vertical or diagonal with player
if lined up, next turn it will perform a charge attack that ends at the player's current position
*/
if argument0 {
	if canCharge then counter = 1
	else counter = 0
}
var player = noone;
	
with gridObject_character {
	if deciderScript = decider_player then player = id
}
	
if player = noone return [actionSetup_move,[gx,gy]]

//state 0: lining up charge attack
if counter = 0 {
	//a very hacky instance variable setup
	canCharge = false
	chargeX = gx
	chargeY = gy
	
	
	var dx = player.gx-gx, dy = player.gy-gy,
		xxx = sign(dx), yyy = sign(dy),
		fx = 0, fy = 0;
	
	show_debug_message(string_cartesian(dx,dy))
	
	//check for lineup
	if (dx = 0 || dy = 0) || (abs(dx) == abs(dy)) {
		//setup for charge	
		canCharge = true
		chargeX = player.gx-xxx
		chargeY = player.gy-yyy
		
		fx = -xxx
		fy = -yyy
	} else {
		fx = +xxx
		fy = +yyy
	}
	
	if !gridObject_walkCheck(fx,fy){
		fx=0
		fy=0
	}
	
	return [actionSetup_move,[gx+fx,gy+fy]]
	
} else if counter = 1 {
	canCharge = false
	
	var dx = sign(chargeX-gx), dy = sign(chargeY-gy), doIt = true;
	//if player spot vacated, move one extra tile to occupy that spot
	
	with gridObject_character {
		if gx = other.chargeX+dx && gy = other.chargeY+dy then doIt = false;	
	}
	
	if doIt {
		chargeX+=dx
		chargeY+=dy
	}
	
	return [actionSetup_move,[chargeX,chargeY]]
}