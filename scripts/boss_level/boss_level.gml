level += 1

width = 15
height = 15

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

//leak prevention
if ds_exists(grid,ds_type_grid) then ds_grid_destroy(grid)

grid = ds_grid_create(width, height)

// Default fill the grid with walls
for (var yy = 0; yy < height; yy += 1) {
	for (var xx = 0; xx < width; xx += 1) {
		ds_grid_set(grid, xx, yy, true)
	}
}

// Add single room
rooms = ds_list_create()
inst = instance_create_layer(0, 0, 0, gridRoom)
with (inst) {
	r_width = 13
	r_height = 13
	r_pos[0] = 1
	r_pos[1] = 1
}
ds_list_add(rooms, inst)

// Set the values for the rooms
for (var i = 0; i < ds_list_size(rooms); i++) {
	rm = ds_list_find_value(rooms, i)
	for (yy = rm.r_pos[1]; yy < rm.r_pos[1] + rm.r_height; yy += 1) {
		for (xx = rm.r_pos[0]; xx < rm.r_pos[0] + rm.r_width; xx += 1) {
			ds_grid_set(grid, xx, yy, false)
		}
	}
}

if r_point != undefined {
	player.gx = 7
	player.gy = 7
	player.x = 7 * 16
	player.y = 7 * 16
}

// Add "Boss Enemies"
enemy = gridObject_spawn_character(6,7,instanceLayer,decider_pathAndAttack)		
gridObject_setStats(enemy,5,true,1,0)
enemy = gridObject_spawn_character(8,7,instanceLayer,decider_pathAndAttack)		
gridObject_setStats(enemy,5,true,1,0)
enemy = gridObject_spawn_character(7,8,instanceLayer,decider_pathAndAttack)		
gridObject_setStats(enemy,5,true,1,0)

for (var i = 0; i < 2; i += 1) {
	r = irandom_range(0, ds_list_size(rooms) - 1)
	ran_room = ds_list_find_value(rooms, r)
	r_point = room_random_point(ran_room, gridObject_base)
	if r_point != undefined {
		instance_create_layer(16 * r_point[0], 16 * r_point[1], "Instances", gridObject_item)
	}
}

instance_create_layer(0, 0, "Instances", gridRouter)
instance_create_layer(0, 0, "Instances", gridScheduler)
