with gridObject_base {
	if deciderScript == decider_player {
		draw_set_color(c_purple)
		draw_rectangle(other.hp_pos[0], other.hp_pos[1], other.hp_pos[0] + 16 * maxHP, other.hp_pos[1], true)
		for (var i = 0; i < maxHP; i++) {
			if i < hp
				draw_sprite(spr_hearty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
			else
				draw_sprite(spr_hurty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
		}
	}
}
