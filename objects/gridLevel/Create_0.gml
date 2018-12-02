hp_pos = [16, 16]
width = 15
height = 15

level = 0

//Layers
instanceLayer = layer_get_id("Instances")

// Add player
player = instance_create_layer(0, 0, instanceLayer, gridObject_character)
with player {
	deciderScript = decider_player
	
	spriteRef_idle = player_idle
	spriteRef_walk_down = player_down
	spriteRef_walk_up = player_up
	spriteRef_walk_lateral = player_lateral
}

//data structures
grid = noone

new_level()