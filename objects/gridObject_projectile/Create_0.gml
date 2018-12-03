/// @description moves in a given direction
event_inherited()

xDir = 0
yDir = 0

moveTime = 2 //# of ticks required to traverse a grid tile
moveIter = 0

parent = noone //who to signal when I'm done (used to resolve actions)

maxIterations = 12 //will travel 12 tiles total before expiring
iterations = 0