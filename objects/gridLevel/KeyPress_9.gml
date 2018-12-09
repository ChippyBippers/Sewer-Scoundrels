/// @description Insert description here
// You can write your code in this editor
with gridLevel {
	audio_play_sound(snd_ladder, 0, false)
	if level < 5
		new_level()
	else if level == 5
		boss_level()
	else
		room_goto_next()
	camera_updatePos(baseCamera)
}