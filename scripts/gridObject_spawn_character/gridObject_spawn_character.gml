/// @desc spawns a gridObject with the given presets
/// @param grid_x  Grid X position
/// @param grid_y  Grid Y position
/// @param layer  Layer
/// @param decider  Decider script


var g_x = argument0,
	g_y = argument1,
	g_layer = argument2,
	decider = argument3,
	gObj = instance_create_layer(g_x*16,g_y*16,g_layer,gridObject_character);

with gObj {
	deciderScript = decider	
}

return gObj