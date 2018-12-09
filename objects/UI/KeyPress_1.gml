if keyboard_key == vk_escape {
	menu_hovered = 0
	menu_open = not menu_open
}
if menu_open or player_dead {
	if keyboard_key == vk_down {
		menu_hovered += 1
		audio_play_sound(snd_select, 0, false)
	}
	else if keyboard_key == vk_up {
		menu_hovered -= 1
		audio_play_sound(snd_select, 0, false)
	}
	else if (keyboard_key == vk_left or keyboard_key == vk_right or keyboard_key = ord("Z") or keyboard_key == vk_enter or keyboard_key == vk_space) {
		script_execute(menu_scritps[menu_hovered], keyboard_key, "use")
		audio_play_sound(snd_ui_use, 0, false)
	}
}

// Loop Menu
if menu_hovered < 0 {
	menu_hovered = array_length_1d(menu_options) - 1
}
else if menu_hovered >= array_length_1d(menu_options) {
	menu_hovered = 0
}