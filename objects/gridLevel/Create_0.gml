hp_pos = [16, 16]
width = 15
height = 15

// Add player
player = instance_create_layer(0, 0, "Instances", gridObject_character)
with player {
	deciderScript = decider_player
}

new_level()