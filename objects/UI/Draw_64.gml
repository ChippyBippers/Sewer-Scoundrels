/// @description Insert description here
// You can write your code in this editor
/*
if not open {
	draw_sprite(spr_esc, 0, baseCamera.width - sprite_get_width(spr_esc), 0)
}
else {
	draw_sprite(spr_move, 0, baseCamera.width - sprite_get_width(spr_move), 0)
	draw_sprite(spr_attack, 0, baseCamera.width - sprite_get_width(spr_attack), sprite_get_height(spr_move))
	draw_sprite(spr_item, 0, baseCamera.width - sprite_get_width(spr_item), sprite_get_height(spr_move) +sprite_get_height(spr_attack))
	draw_sprite(spr_aim, 0, baseCamera.width - sprite_get_width(spr_aim), sprite_get_height(spr_move)+sprite_get_height(spr_attack)+sprite_get_height(spr_aim))
}*/

// Draw Player
with gridObject_character {
	if deciderScript == decider_player {
		var hp_bar_pos = [24, 0]
		var hp_bar_size = [100, 8]
		
		// Draw HP Text
		draw_set_color(make_color_rgb(168, 36, 36))
		draw_text(hp_bar_pos[0] - 16, hp_bar_pos[1] + 2,"HP")
		draw_set_color(make_color_rgb(226, 83, 34))
		draw_text(hp_bar_pos[0] - 16, hp_bar_pos[1] + 1,"HP")
		
		// Draw Healthbar
		draw_set_color(make_color_rgb(37, 125, 44))
		draw_rectangle(hp_bar_pos[0], hp_bar_pos[1], hp_bar_pos[0] + hp_bar_size[0], hp_bar_pos[1] + hp_bar_size[1], false)
		draw_set_color(make_color_rgb(104, 178, 41))
		draw_rectangle(hp_bar_pos[0], hp_bar_pos[1], hp_bar_pos[0] + hp_bar_size[0] * (hp/maxHP), hp_bar_pos[1] + hp_bar_size[1], false)
		
		// Draw Items
		draw_set_color(make_color_rgb(163, 204, 155))
		draw_rectangle(0, baseCamera.height - 12, 12, baseCamera.height, false)
		draw_rectangle(16, baseCamera.height - 20, 36, baseCamera.height, false)
		draw_rectangle(40, baseCamera.height - 12, 52, baseCamera.height, false)
			
		if ds_list_size(inventory) > 0 {
			draw_sprite_ext(itemMap_sprites[? inventory[| 0]], 0, 16, baseCamera.height - 20, 20.0/16.0, 20.0/16.0, 0, c_white, 1)
		}
		if ds_list_size(inventory) > 1 {
			draw_sprite_ext(itemMap_sprites[? inventory[| 1]], 0, 40, baseCamera.height - 12, 12.0/16.0, 12.0/16.0, 0, c_white, 1)
			draw_sprite_ext(itemMap_sprites[? inventory[| ds_list_size(inventory)-1]], 0, 0, baseCamera.height - 12, 12.0/16.0, 12.0/16.0, 0, c_white, 1)
		}
	}
}

// Draw level information
draw_set_color(make_color_rgb(168, 36, 36))
draw_text(baseCamera.width - 32, 2,"F" + string(gridLevel.level))
draw_set_color(make_color_rgb(226, 83, 34))
draw_text(baseCamera.width - 32, 1,"F" + string(gridLevel.level))