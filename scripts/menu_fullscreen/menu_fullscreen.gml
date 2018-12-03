if argument_count == 0 {
	window_set_fullscreen(not window_get_fullscreen())
	if not window_get_fullscreen() {
		window_center()
	}
}
else if argument[0] == "status" {
	return window_get_fullscreen() ? "On" : "Off"
}