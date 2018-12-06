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
	
	
	var dx = sign(player.gx-gx), dy = sign(player.gy-gy);
	
	//check for lineup
	if (dx = 0 || dy = 0) || (abs(dx) == abs(dy)) {
		//setup for charge	
		canCharge = true
		chargeX = player.gx-dx
		chargeY = player.gy-dy
		
		return [actionSetup_move,[gx-dx,gy-dy]]
	}
	
	else return [actionSetup_move,[gx+dx,gy+dy]]
} else if counter = 1 {
	canCharge = false
	
	return [actionSetup_move,[chargeX,chargeY]]
}