fnt_pressStart = font_add("font.ttf", 6, false, false, 32, 128)
draw_set_font(fnt_pressStart)

menu_open = false
player_dead = false

audio_on = true
volume = 0.4
audio_master_gain(volume)

menu_hovered = 0
menu_options = ["Resume", "Audio", "Volume", "Fullscreen:", "Restart", "Quit"]
menu_scritps = [menu_resume, menu_audio, menu_volume, menu_fullscreen, menu_restart, menu_quit]