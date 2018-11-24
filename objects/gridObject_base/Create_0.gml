/// @description Insert description here
// You can write your code in this editor

state = gridObject.idle

gx = floor(x/16)
gy = floor(y/16)

x = gx*16
y = gy*16

pgx = gx
pgy = gy

moveIter = 0

counter = 0

intent = noone //script you wanna call on your turn
intent_args = noone //arguments for intent

xDir = 1
yDir = 0
facingAngle = 0
renderAngle = 0