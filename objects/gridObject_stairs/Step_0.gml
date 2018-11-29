with gridObject_character {
	if deciderScript == decider_player {
		if x == other.x and y == other.y {
			with gridLevel {
				if level < 5
					new_level()
				else
					boss_level()
			}
		}
	}
}
