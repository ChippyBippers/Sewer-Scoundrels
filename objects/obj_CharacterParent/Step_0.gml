if(poisoned)
{
	poisoned = false;
	poisonDamage += 5;
	poisonIteration = 0;
	show_debug_message(poisonDamage);
	if !alarm[0] > 0 then alarm[0] = 10;
}