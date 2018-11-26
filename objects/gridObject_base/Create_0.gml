/// @description Insert description here
// You can write your code in this editor

state = gridObject.idle

//positioning

gx = floor(x/16)
gy = floor(y/16)

x = gx*16
y = gy*16

xDir = 1
yDir = 0
facingAngle = 0
renderAngle = 0

//misc misc
cameraFollow = false

//misc variables for actions & deciders

pgx = gx
pgy = gy

moveIter = 0

counter = 0

//combat stats
maxHP = 10
hp = maxHP