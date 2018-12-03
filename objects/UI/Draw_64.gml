/// @description Insert description here
// You can write your code in this editor
if not open {
	draw_sprite(spr_esc, 0, baseCamera.width - sprite_get_width(spr_esc), 0)
}
else {
	draw_sprite(spr_move, 0, baseCamera.width - sprite_get_width(spr_move), 0)
	draw_sprite(spr_attack, 0, baseCamera.width - sprite_get_width(spr_attack), sprite_get_height(spr_move))
	draw_sprite(spr_item, 0, baseCamera.width - sprite_get_width(spr_item), sprite_get_height(spr_move) +sprite_get_height(spr_attack))
	draw_sprite(spr_aim, 0, baseCamera.width - sprite_get_width(spr_aim), sprite_get_height(spr_move)+sprite_get_height(spr_attack)+sprite_get_height(spr_aim))
}

// Draw Player
with gridObject_character {
	if deciderScript == decider_player {
		// Draw Healthbar
		draw_set_font(other.fnt_pressStart)
		draw_set_alpha(0.6)
		draw_set_color(make_color_rgb(127, 6, 31))
		draw_rectangle(8, 4, 8*maxHP, 16, false)
		draw_set_color(make_color_rgb(174, 9, 64))
		draw_rectangle(8, 4, 8*hp, 16, false)
		draw_set_alpha(1)
		// Draw Items
		for (var i = 0; i < ds_list_size(inventory); i++) {
			var w = sprite_get_width(itemMap_sprites[? inventory[| i]])
			var h = sprite_get_height(itemMap_sprites[? inventory[| i]])
			draw_sprite(itemMap_sprites[? inventory[| i]], 0, 8 + w * i, baseCamera.height - h - 8)
		}
	}
}
