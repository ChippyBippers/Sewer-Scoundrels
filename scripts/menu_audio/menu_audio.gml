if argument_count <= 1 {
}
else if argument[1] == "status" {
	if not audio_on {
		return "Off"
	}
	else {
		return "On"
	}
}
else if argument[1] == "use" {
	if audio_on {
		audio_on = false
		audio_master_gain(0)
	}
	else {
		audio_on = true
		audio_master_gain(volume)
	}
}