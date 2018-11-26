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

moveIter = 0
actionScript = action_move

with gridRouter{
	if (other.pgx>=0 && other.pgx<width) &&
	(other.pgy>=0 && other.pgy<width) {
		mp_grid_clear_cell(gridMap,other.pgx,other.pgy)	
	}
	
	if (other.gx>=0 && other.gx<width) &&
	(other.gy>=0 && other.gy<width) {
		mp_grid_add_cell(gridMap,other.gx,other.gy)	
	}
}
