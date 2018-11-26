/// @description Set Player motion

var vectX = keyboard_check(ord("D")) - keyboard_check(ord("A")),
	vectY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//sprinting checks a few things but does not necessarily subtract from stamina
sprinting = (keyboard_check(vk_lshift));

var walkSpd = 3,
	sprintSpd = 6;

hspeed = vectX * (sprinting? sprintSpd: walkSpd);
vspeed = vectY * (sprinting? sprintSpd: walkSpd);