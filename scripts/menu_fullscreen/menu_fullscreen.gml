if argument_count <= 1 {
	window_set_fullscreen(not window_get_fullscreen())
	if not window_get_fullscreen() {
		window_center()
	}
}
else if argument[1] == "status" {
	return window_get_fullscreen() ? "On" : "Off"
}
else if argument[1] == "use" {
	window_set_fullscreen(not window_get_fullscreen())
	if not window_get_fullscreen() {
		window_center()
	}
}