//Draw
/// @description Insert description here
// You can write your code in this editor
for (yy = 0; yy < height; yy += 1) {
	for (xx = 0; xx < width; xx += 1) {
		if ds_grid_get(grid, xx, yy)
			draw_sprite(wall, 0, xx*16, yy*16);
		else
			draw_sprite(floor, 0, xx*16, yy*16);
	}
}