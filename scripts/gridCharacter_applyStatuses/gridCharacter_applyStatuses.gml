if gridObject_hasStatus(statuses.poison) {
	if !invincible{
		gridObject_damage(1)
		gridObject_character.brightness = 0.7;
	}
	myStatuses[? statuses.poison]-=1	
}