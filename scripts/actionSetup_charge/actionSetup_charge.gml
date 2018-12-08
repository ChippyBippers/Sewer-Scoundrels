var chunk = argument0,
	tgx = chunk[0],
	tgy = chunk[1];

xDir = sign(tgx-gx)
yDir = sign(tgy-gy)

facingAngle = angleFromDir(xDir,yDir)
if xDir !=0 image_xscale = xDir


moveIter = 0

//moveLimit: # of tiles to move total
moveCount = 0
moveLimit = max(xDir*(tgx-gx),yDir*(tgy-gy))

if xDir != 0 || yDir != 0 {
	//sprite setting
	var walkSprite = spriteRef_walk_lateral;
	switch(facingAngle){
		case 90:
			walkSprite = spriteRef_walk_up
			break;
		case 270:
			walkSprite = spriteRef_walk_down
			break;
	}

	if sprite_exists(walkSprite) then sprite_index = walkSprite

	//updating the pathfinding grid
	with gridRouter{
		if (other.gx>=0 && other.gx<width) &&
		(other.gy>=0 && other.gy<width){
			var good = true;
			var xx = other.gx, yy = other.gy;
		
			with gridLevel{
				if grid[# xx,yy] good = false	
			}
		
			if good mp_grid_clear_cell(gridMap,other.gx,other.gy)	
		}
	
		if (tgx>=0 && tgx<width) &&
		(tgy>=0 && tgy<width) {
			mp_grid_add_cell(gridMap,tgx,tgy)	
		}
	}
}
//return 2 to call one iteration of action_move directly afterwards
actionScript = action_charge
return 2