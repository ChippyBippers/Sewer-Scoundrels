hp_pos = [16, 16]
width = 15
height = 15

grid = ds_grid_create(width, height)

rooms = generate_level(width, height)

// Add player
var r_point = room_random_point(ds_list_find_value(rooms, irandom_range(0, ds_list_size(rooms) - 1)), gridObject_character)
if r_point != undefined {
	player = instance_create_layer(16 * r_point[0], 16 * r_point[1], "Instances", gridObject_character)
	with player {
		deciderScript = decider_player
	}
}

add_enemies(rooms, 1)