var sender = argument0,
	receiver = argument1;

//todo: actual damage calculation (offense & defense modifiers, etc.)
var damage = sender.atk;

with receiver{
	hp -= damage
	
	
	if hp<=0 {
		//todo: death fizzle or something
		instance_destroy()	
	} else {
		//apply flinching animation
		gridScheduler_enqueue(id,[actionSetup_hurt,noone])
	}
	
	tookDamage = true
}

show_debug_message(string(sender)+" inflicted "+string(damage)+" onto "+string(receiver))