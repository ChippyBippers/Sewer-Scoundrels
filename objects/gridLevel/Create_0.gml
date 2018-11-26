hp_pos = [16, 16]

/// @description Insert description here
// You can write your code in this edito
width = make_odd(width)
heigh = make_odd(height)

grid = ds_grid_create(width, height)

rooms = ds_list_create()
room_attempts = 100
room_min_size = 5
room_max_size = 9
randomize()

// Default fill the grid with walls
for (yy = 0; yy < height; yy += 1) {
	for (xx = 0; xx < width; xx += 1) {
		ds_grid_set(grid, xx, yy, true)
	}
}

// Add rooms
for (i = 0; i < room_attempts; i += 1) {
	//show_debug_message(i)
	// Create new room coordinates
	r_width = make_odd(irandom_range(room_min_size, room_max_size))
	r_height = make_odd(irandom_range(room_min_size, room_max_size))
	r_pos = [make_odd(irandom_range(1, width - r_width - 1)), make_odd(irandom_range(1, height - r_height - 1))]
	
	// Check if the new room overlaps others
	var valid = true
	for (r = 0; r < ds_list_size(rooms); r++) {
		rm = ds_list_find_value(rooms, r)
		if rect_overlaps_room(rm, r_pos, r_width, r_height) {
			valid = false
			break
		}
	}
	
	// If it is valid create it and add it to the list
	if valid {
		inst = instance_create_layer(0, 0, 0, gridRoom)
		with (inst) {
			r_width = other.r_width
			r_height = other.r_height
			r_pos = other.r_pos
		}
		ds_list_add(rooms, inst)
	}
}

// Set the values for the rooms
for (i = 0; i < ds_list_size(rooms); i++) {
	rm = ds_list_find_value(rooms, i)
	for (yy = rm.r_pos[1]; yy < rm.r_pos[1] + rm.r_height; yy += 1) {
		for (xx = rm.r_pos[0]; xx < rm.r_pos[0] + rm.r_width; xx += 1) {
			ds_grid_set(grid, xx, yy, false)
		}
	}
}

// Connect rooms
last_room = ds_list_find_value(rooms, 0)
for (r = 1; r < ds_list_size(rooms); r++) {
	goal_room = ds_list_find_value(rooms, r)
	var x_dist = last_room.r_pos[0] - goal_room.r_pos[0]
	var y_dist = last_room.r_pos[1] - goal_room.r_pos[1]
	
	point = [last_room.r_pos[0] + (x_dist < 0 ? last_room.r_width : -1), last_room.r_pos[1] + irandom_range(0, last_room.r_height - 1)]
	goal_point = [goal_room.r_pos[0] + irandom_range(0, goal_room.r_width - 1), goal_room.r_pos[1] + (y_dist > 0 ? goal_room.r_height : -1)]
	//show_debug_message(string(goal_point[0]) + "," + string(goal_point[1]))
	
	// Remove walls while creating hallways
	ds_grid_set(grid, point[0], point[1], false)
	while !points_equal(point, goal_point) {
		if point[0] > goal_point[0] or point[0] < goal_point[0] point[0] += sign(goal_point[0] - point[0]);
		else if point[1] < goal_point[1] point[1] += 1;
		else if point[1] > goal_point[1] point[1] -= 1;
		ds_grid_set(grid, point[0], point[1], false)
	}
	
	last_room = goal_room
}

// Remove dead ends
for (var yy = 0; yy < height; yy += 1) {
	for (var xx = 0; xx < width; xx += 1) {
		count = 0
		if xx-1 > 0
			if not ds_grid_get(grid, xx-1, yy) count += 1
		if yy-1 > 0
			if not ds_grid_get(grid, xx, yy-1) count += 1
		if xx+1 < width
			if not ds_grid_get(grid, xx+1, yy) count += 1
		if yy+1 < height
			if not ds_grid_get(grid, xx, yy+1) count += 1
		if count <= 1 ds_grid_set(grid, xx, yy, true)
	}
}