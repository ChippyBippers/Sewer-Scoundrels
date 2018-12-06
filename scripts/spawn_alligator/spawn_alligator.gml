enemy = gridObject_spawn_character(argument0,argument1,"instances",decider_alligator)
		
gridObject_setStats(enemy,20,true,4,0)
with enemy {
	sprite_index = alligator_idle
	spriteRef_idle = alligator_idle
	spriteRef_walk_down = alligator_idle
	spriteRef_walk_up = alligator_idle
	spriteRef_walk_lateral = alligator_idle
}

return enemy