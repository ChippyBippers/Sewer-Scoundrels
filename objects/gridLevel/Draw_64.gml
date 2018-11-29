with gridObject_character {
	if deciderScript == decider_player {
		for (var i = 0; i < maxHP; i++) {
			if i < hp
				draw_sprite(spr_hearty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
			else
				draw_sprite(spr_hurty, 0, other.hp_pos[0] + 16 * i, other.hp_pos[1])
		}
		for (var i = 0; i < ds_list_size(inventory); i++) {
			var w = sprite_get_width(itemMap_sprites[? inventory[| i]])
			var h = sprite_get_height(itemMap_sprites[? inventory[| i]])
			draw_sprite(itemMap_sprites[? inventory[| i]], 0, 8 + w * i, baseCamera.height - h - 8)
		}
	}
}
