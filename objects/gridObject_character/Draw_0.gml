/// @description Insert description here
// You can write your code in this editor
var sxx = 0;

if image_xscale = -1 {
	sxx = 16
}

//var drawColor = gridObject_hasStatus(statuses.poison)?c_fuchsia: c_white;
draw_sprite_ext(sprite_index,image_index,x+sxx,y,image_xscale,1,renderAngle,c_white,1);

if(brightness > 0 && gridObject_hasStatus(statuses.poison))
{
	brightness -= 0.02;
	gpu_set_blendmode(bm_add);
	shader_set(shd_Poison);

	sAlpha = shader_get_uniform(shd_Poison, "shadeAlpha");
	rCol = shader_get_uniform(shd_Poison, "rVal");
	gCol = shader_get_uniform(shd_Poison, "gVal");
	bCol = shader_get_uniform(shd_Poison, "bVal");

	shader_set_uniform_f(rCol, color_get_red(c_fuchsia));
	shader_set_uniform_f(gCol, color_get_green(c_fuchsia));
	shader_set_uniform_f(bCol, color_get_blue(c_fuchsia));
	shader_set_uniform_f(sAlpha, brightness);

	draw_sprite_ext(sprite_index,image_index,x+sxx,y,image_xscale,1,renderAngle,c_white,1);
	shader_reset();
	gpu_set_blendmode(bm_normal);
}
//draw_sprite_ext(spr_directionIndicator,0,x+8+12*xDir,y+8+12*yDir,1,1,facingAngle,c_white,1)

/*
draw_set_color(c_red)
draw_circle(x+8,y+8,8,true)
draw_set_color(c_white)
*/