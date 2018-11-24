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