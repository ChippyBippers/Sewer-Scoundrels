if gridObject_hasStatus(statuses.poison) {
	myStatuses[? statuses.poison]-=1
	gridObject_character.brightness = 0.7;
	if !invincible{
		return gridObject_damage(1)
	}
}

return false