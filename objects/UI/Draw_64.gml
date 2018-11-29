/// @description Insert description here
// You can write your code in this editor
if not open {
	draw_sprite(spr_esc, 0, baseCamera.width - sprite_get_width(spr_esc), 0)
}
else {
	draw_sprite(spr_move, 0, baseCamera.width - sprite_get_width(spr_move), 0)
	draw_sprite(spr_attack, 0, baseCamera.width - sprite_get_width(spr_attack), sprite_get_height(spr_move))
	draw_sprite(spr_item, 0, baseCamera.width - sprite_get_width(spr_item), sprite_get_height(spr_move) +sprite_get_height(spr_attack))
}