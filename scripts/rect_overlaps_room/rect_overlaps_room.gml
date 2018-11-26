var room1 = argument0
var pos = argument1
var width = argument2
var height = argument3

return rectangle_in_rectangle(
	room1.r_pos[0], room1.r_pos[1], room1.r_pos[0] + room1.r_width, room1.r_pos[1] + room1.r_height,
	pos[0], pos[1], pos[0] + width, pos[1] + height
	)