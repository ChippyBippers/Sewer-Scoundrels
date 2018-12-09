/// @description Insert description here
// You can write your code in this editor
event_inherited()

state = gridObject.idle

//positioning

xDir = 1
yDir = 0
facingAngle = 0
renderAngle = 0

//misc misc
myTurn = false
cameraFollow = false
tookDamage = false //determine if hp regen this turn

//misc variables for actions & deciders
actionUpdated = false

pgx = gx
pgy = gy

moveIter = 0

counter = 0
doneChild = 0

//combat stats
maxHP = 10
hp = maxHP

inventory = ds_list_create()
itemMap_scripts = ds_map_create()
itemMap_sprites = ds_map_create()

myStatuses = ds_map_create()

//sprite references
spriteRef_idle = noone

spriteRef_walk_up = noone
spriteRef_walk_down = noone
spriteRef_walk_lateral = noone

// for the shader
myShader = noone
myColor = noone
brightness = 0;