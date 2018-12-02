//will traverse to the given position, ignoring collisions or anything
//(INPUT IS GRID COORDINATES)
var chunk = argument0;
pgx = gx
pgy = gy
gx = chunk[0]
gy = chunk[1]

xDir = sign(gx-pgx)
yDir = sign(gy-pgy)

facingAngle = angleFromDir(xDir,yDir)
if xDir !=0 image_xscale = xDir


moveIter = 0

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
	if (other.pgx>=0 && other.pgx<width) &&
	(other.pgy>=0 && other.pgy<width){
		var good = true;
		var xx = other.pgx, yy = other.pgy;
		
		with gridLevel{
			if grid[# xx,yy] good = false	
		}
		
		if good mp_grid_clear_cell(gridMap,other.pgx,other.pgy)	
	}
	
	if (other.gx>=0 && other.gx<width) &&
	(other.gy>=0 && other.gy<width) {
		mp_grid_add_cell(gridMap,other.gx,other.gy)	
	}
}

//return 2 to call one iteration of action_move directly afterwards
actionScript = action_move
return 2