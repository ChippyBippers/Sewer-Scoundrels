/// @description invincibility toggle
with gridObject_character {
	if deciderScript = decider_player {
		hp = maxHP
		invincible = !invincible	
	}
}