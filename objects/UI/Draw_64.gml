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
		
		// Draw Item Boxes
		var offset = 8
		var spacing = 8
		for (var i = 0; i < inventorySlots; i++) {
			if i == itemSelected {
				draw_set_color(make_color_rgb(56, 56, 76))
				draw_rectangle(offset + (12+spacing) * i, baseCamera.height - 16, offset + (12+spacing) * i + 16, baseCamera.height - 1, false)
				draw_set_color(make_color_rgb(93, 91, 110))
				draw_rectangle(offset + (12+spacing) * i + 1, baseCamera.height - 16 + 1, offset + (12+spacing) * i + 16 - 1, baseCamera.height - 2, false)
			}
			else {
				draw_set_color(make_color_rgb(56, 56, 76))
				draw_rectangle(offset + (12+spacing) * i, baseCamera.height - 12, offset + (12+spacing) * i + 12, baseCamera.height - 1, false)
				draw_set_color(make_color_rgb(93, 91, 110))
				draw_rectangle(offset + (12+spacing) * i + 1, baseCamera.height - 12 + 1, offset + (12+spacing) * i + 12 - 1, baseCamera.height - 2, false)
			}
		}
			
		for (var i = 0; i < ds_list_size(inventory); i++) {
			if i == itemSelected {
				draw_sprite(itemMap_sprites[? inventory[| i]], 0, offset + (12+spacing) * i, baseCamera.height - 16)			
			}
			else {
				draw_sprite_ext(itemMap_sprites[? inventory[| i]], 0, offset + (12+spacing) * i, baseCamera.height - 12, 12.0/16.0, 12.0/16.0, 0, c_white, 1)	
			}
		}
	}
}

// Draw level information
draw_set_color(make_color_rgb(168, 36, 36))
draw_text(baseCamera.width - 32, 2,"F" + string(gridLevel.level))
draw_set_color(make_color_rgb(226, 83, 34))
draw_text(baseCamera.width - 32, 1,"F" + string(gridLevel.level))

if menu_open {
	// Draw menu background
	draw_set_color(make_color_rgb(56, 56, 76))
	draw_rectangle(32-1, 32-1, baseCamera.width - 32 + 1, baseCamera.height - 32 + 1, false)
	draw_set_color(make_color_rgb(93, 91, 110))
	draw_rectangle(32, 32, baseCamera.width - 32, baseCamera.height - 32, false)
	
	// Options Title
	draw_set_color(make_color_rgb(168, 36, 36))
	draw_text_transformed(40, 40 + (0.5), "Options", 0.5, 0.5, 0)
	draw_set_color(make_color_rgb(226, 83, 34))
	draw_text_transformed(40, 40, "Options", 0.5, 0.5, 0)
	
	// Options
	draw_set_color(make_color_rgb(253, 245, 241))
	for (var i = 0; i < array_length_1d(menu_options); i++) {
		var text = (i == menu_hovered ? ">" : " ") + menu_options[i] + " " + script_execute(menu_scritps[i], 0, "status")
		draw_text_transformed(40, 32 + 8*(i+2), text, 0.5, 0.5, 0)
	}
	
	// Controls Title
	draw_set_color(make_color_rgb(168, 36, 36))
	draw_text_transformed(40, baseCamera.height - 64 + (0.5), "Controls", 0.5, 0.5, 0)
	draw_set_color(make_color_rgb(226, 83, 34))
	draw_text_transformed(40, baseCamera.height - 64, "Controls", 0.5, 0.5, 0)
	
	// Controls
	draw_set_color(make_color_rgb(253, 245, 241))
	draw_text_transformed(40, baseCamera.height - 56, "Move: Arrow Keys", 0.5, 0.5, 0)
	draw_text_transformed(40, baseCamera.height - 48, "Attack: Space", 0.5, 0.5, 0)
	draw_text_transformed(40, baseCamera.height - 40, "Aim: Hold Shift", 0.5, 0.5, 0)
	
	draw_text_transformed(120, baseCamera.height - 56, "Use Item: Z", 0.5, 0.5, 0)
	draw_text_transformed(120, baseCamera.height - 48, "Cycle Items: Q <-> E", 0.5, 0.5, 0)
}