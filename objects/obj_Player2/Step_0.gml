/// @description Set Player motion

var vectX = keyboard_check(vk_right) - keyboard_check(vk_left),
	vectY = keyboard_check(vk_down) - keyboard_check(vk_up);

//sprinting checks a few things but does not necessarily subtract from stamina
sprinting = (keyboard_check(vk_rshift));

var walkSpd = 3,
	sprintSpd = 6;

hspeed = vectX * (sprinting? sprintSpd: walkSpd);
vspeed = vectY * (sprinting? sprintSpd: walkSpd);

event_inherited();