with gridScheduler {
	instance_destroy(self)
}
with gridObject_character {
	if deciderScript != decider_player {
		instance_destroy(self)
	}
}
with gridObject_item {
	instance_destroy(self)
}
with gridObject_stairs {
	instance_destroy(self)
}
with gridRouter {
	instance_destroy(self)
}

grid = ds_grid_create(width, height)
rooms = generate_level(width, height)

var r_point = room_random_point(ds_list_find_value(rooms, irandom_range(0, ds_list_size(rooms) - 1)), gridObject_base)
if r_point != undefined {
	player.gx = r_point[0]
	player.gy = r_point[1]
	player.x = r_point[0] * 16
	player.y = r_point[1] * 16
}

add_enemies(rooms, 1)

for (var i = 0; i < 2; i += 1) {
	r = irandom_range(0, ds_list_size(rooms) - 1)
	ran_room = ds_list_find_value(rooms, r)
	r_point = room_random_point(ran_room, gridObject_base)
	if r_point != undefined {
		instance_create_layer(16 * r_point[0], 16 * r_point[1], "Instances", gridObject_item)
	}
}


for (var i = 0; i < 1; i += 1) {
	r = irandom_range(0, ds_list_size(rooms) - 1)
	ran_room = ds_list_find_value(rooms, r)
	r_point = room_random_point(ran_room, noone)
	if r_point != undefined {
		instance_create_layer(16 * r_point[0], 16 * r_point[1], "Instances", gridObject_stairs)
	}
}

instance_create_layer(0, 0, "Instances", gridRouter)
instance_create_layer(0, 0, "Instances", gridScheduler)
