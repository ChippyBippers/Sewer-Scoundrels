var chunk = argument0,
	obj = chunk[0];

with instance_create_layer(x,y,layer,obj) {
	parent = other.id
	xDir = other.xDir
	yDir = other.yDir
	
	image_angle = darctan2(-yDir,xDir)
}

childActive = 1

audio_play_sound(snd_bug_attack, 0, false)
actionScript = action_projectile
return 0