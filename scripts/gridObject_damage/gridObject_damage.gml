hp -= argument0
	
if hp<=0 {
	//todo: death fizzle or something
	instance_destroy()
	return false
} else {
	//apply flinching animation
	gridScheduler_enqueue(id,[actionSetup_hurt,noone])
}

return true
tookDamage = true