var chunk = argument0,
	pspr = chunk[0],
	pscr = chunk[1];

with instance_create_layer(x,y,layer,gridObject_projectile) {
	projectileScript = pscr
	sprite_index = pspr
	
	parent = other.id
	xDir = other.xDir
	yDir = other.yDir
	
	image_angle = darctan2(-yDir,xDir)
}

childActive = 1

audio_play_sound(snd_bug_attack, 0, false)
actionScript = action_projectile
return 0