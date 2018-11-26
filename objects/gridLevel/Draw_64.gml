with player {
	if deciderScript == decider_player {
		for (var i = 0; i < maxHP; i++) {
			if i < hp
				draw_sprite(spr_hearty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
			else
				draw_sprite(spr_hurty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
		}
	}
}
