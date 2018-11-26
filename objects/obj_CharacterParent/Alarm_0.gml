/// @description Get Poisoned
poisonIteration += 1;
hpLevel -= poisonDamage;

show_debug_message(hpLevel);

if poisonIteration <= 4
	alarm[0] = 10;
else
	poisonDamage = 0;	


