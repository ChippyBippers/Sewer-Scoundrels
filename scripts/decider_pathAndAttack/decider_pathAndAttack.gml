if argument0 {
	
} else {
	var path = path_add(); //why in blazes is this not path_create()
	
	//find a player
	var player = noone;
	
	with gridObject_base{
		if id != other.id and deciderScript = decider_player {
			player = id
			break;
		}
	}
	
	//get a route to the player
	show_debug_message(gridRouter_routeTo(id,player,path))
	
	show_debug_message(path_get_number(path))
	
	if path_get_number(path)>2{
		//there's at least one tile of distance between you and the target
		return [actionSetup_move, [path_get_point_x(path,1), path_get_point_y(path,1)]]
		
	} else if path_get_number(path)>1{ 
		//you're next to the target
		var xx = path_get_point_x(path,1) - gx,
			yy = path_get_point_y(path,1) - gy;
		
		return [actionSetup_basicAttack,[xx,yy]]
	} else {
		//if there's only one point on the path, you're on top of the target somehow
		return [actionSetup_move,[gx,gy]]
	}
	
	
}