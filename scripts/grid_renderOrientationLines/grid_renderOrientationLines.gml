//this is crude but it works for now

var facing = argument0, //direction angle
	radius = argument1, //# of tiles AWAY from the center
	originX = argument2,
	originY = argument3,
	color = argument4;


for(var j=0;j<8;j++){
	var currentAngle = j*45,
		dx = sign(dcos(currentAngle)),
		dy = sign(-dsin(currentAngle)),
		cc = (facing == currentAngle)?1: 0;
	
	show_debug_message(string(facing)+"_"+string(currentAngle))
	
	for(var i=1;i<=radius;i++){
		var xx = originX + dx*i,
			yy = originY + dy*i;
		
		if xx<0 or yy<0 break;
		else draw_sprite(spr_orientationTile,cc,xx*16,yy*16)
	}
}