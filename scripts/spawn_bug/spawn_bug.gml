enemy = gridObject_spawn_character(argument0,argument1,"instances",decider_distanceAndShoot)
		
gridObject_setStats(enemy,1,true,1,0)
with enemy {
	sprite_index = bug_idle
	spriteRef_idle = bug_idle
	spriteRef_walk_down = bug_down
	spriteRef_walk_up = bug_up
	spriteRef_walk_lateral = bug_lateral
}

return enemy