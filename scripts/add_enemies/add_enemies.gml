var rooms = argument0
var enemy_count = argument1

for (var i = 0; i < enemy_count; i += 1) {
	r = irandom_range(0, ds_list_size(rooms) - 1)
	ran_room = ds_list_find_value(rooms, r)
	r_point = room_random_point(ran_room, gridObject_character)
	if r_point != undefined {
		
		var enemy = spawn_alligator(r_point[0],r_point[1])
	}
}
