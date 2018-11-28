with gridObject_character {
	if deciderScript == decider_player {
		if x == other.x and y == other.y {
			with gridLevel {
				new_level()
			}
		}
	}
}
