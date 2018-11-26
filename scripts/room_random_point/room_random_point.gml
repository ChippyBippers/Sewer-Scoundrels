var rm = argument0
var avoid_object = argument1

valid = false
while not valid {
	if not room_has_space(rm) return undefined
	xx = rm.r_pos[0] + irandom_range(0, rm.r_width - 1)
	yy = rm.r_pos[1] + irandom_range(0, rm.r_height - 1)

	valid = true
	with avoid_object {
		if gx == other.xx and gy == other.yy {
			other.valid = false
		}
	}
	
	if valid return [xx, yy]
}