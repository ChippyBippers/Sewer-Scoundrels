var rm = argument0

for (var yy = 0; yy < rm.r_height; yy += 1) {
	for (var xx = 0; xx < rm.r_width; xx += 1) {
		if not instance_position(rm.r_pos[0] * 16 + xx * 16, rm.r_pos[1] * 16 + yy * 16, gridObject_base) {
			return true
		}
	}
}

return false