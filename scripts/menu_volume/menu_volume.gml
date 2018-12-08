if argument_count <= 1 {
}
else if argument[1] == "status" {
	return string(round(volume*10)) + "/10"
}
else if argument[1] == "use" {
	if argument[0] == vk_left and volume > 0 {
		volume -= 0.1
	}
	else if argument[0] == vk_right and volume < 1 {
		volume += 0.1
	}
	audio_master_gain(volume)
}