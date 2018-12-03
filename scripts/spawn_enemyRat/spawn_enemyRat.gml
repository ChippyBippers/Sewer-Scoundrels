enemy = gridObject_spawn_character(argument0,argument1,"instances",decider_pathAndAttack)
		
gridObject_setStats(enemy,5,true,1,0)
with enemy {
	sprite_index = player_idle
	spriteRef_idle = player_idle
	spriteRef_walk_down = player_down
	spriteRef_walk_up = player_up
	spriteRef_walk_lateral = player_lateral
}

return enemy