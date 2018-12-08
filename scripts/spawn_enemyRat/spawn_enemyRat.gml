enemy = gridObject_spawn_character(argument0,argument1,"instances",decider_pathAndAttack)
		
gridObject_setStats(enemy,5,true,1,0)
with enemy {
	sprite_index = badRat_idle
	spriteRef_idle = badRat_idle
	spriteRef_walk_down = badRat_down
	spriteRef_walk_up = badRat_up
	spriteRef_walk_lateral = badRat_lateral
}

return enemy