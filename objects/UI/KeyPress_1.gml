if keyboard_key == vk_escape {
	menu_hovered = 0
	menu_open = not menu_open
}
else if keyboard_key == vk_down {
	menu_hovered += 1
}
else if keyboard_key == vk_up {
	menu_hovered -= 1
}
else if menu_open and (keyboard_key == vk_enter or keyboard_key == ord("Z") or keyboard_key == vk_space) {
	script_execute(menu_scritps[menu_hovered])
}

// Loop Menu
if menu_hovered < 0 {
	menu_hovered = array_length_1d(menu_options) - 1
}
else if menu_hovered >= array_length_1d(menu_options) {
	menu_hovered = 0
}
