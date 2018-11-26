var rooms = argument0
var enemy_count = argument1

for (var i = 0; i < enemy_count; i += 1) {
	r = irandom_range(0, ds_list_size(rooms) - 1)
	ran_room = ds_list_find_value(rooms, r)
	r_point = room_random_point(ran_room, gridObject_character)
	if r_point != undefined {
		enemy = instance_create_layer(16 * r_point[0], 16 * r_point[1], "Instances", gridObject_character)
		with enemy {
			deciderScript = decider_pathAndAttack
		}
	}
}
