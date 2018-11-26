with argument0 {
	with target {
		cameraFollow = false	
	}
	
	target = argument1
	
	with target {
		cameraFollow = true
	}
	
	camera_updatePos(id)
}