var sender = argument0,
	receiver = argument1;

//todo: actual damage calculation (offense & defense modifiers, etc.)
var damage = sender.atk;

with receiver{
	if !invincible gridObject_damage(damage)
}

show_debug_message(string(sender)+" inflicted "+string(damage)+" onto "+string(receiver))