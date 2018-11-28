hp_pos = [16, 16]
width = 15
height = 15

//Layers
instanceLayer = layer_get_id("Instances")

// Add player
player = instance_create_layer(0, 0, instanceLayer, gridObject_character)
with player {
	deciderScript = decider_player
}

//data structures
grid = noone

new_level()