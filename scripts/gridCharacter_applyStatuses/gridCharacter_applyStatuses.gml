if gridObject_hasStatus(statuses.poison) and !invincible {
	gridObject_damage(1)
	gridObject_character.brightness = 0.7;
	myStatuses[? statuses.poison]-=1	
}