if argument0.deciderScript == decider_player {
	with gridLevel {
		if level < 5
			new_level()
		else
			boss_level()
	}
}