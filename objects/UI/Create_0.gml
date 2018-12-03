fnt_pressStart = font_add("font.ttf", 6, false, false, 32, 128)
draw_set_font(fnt_pressStart)
menu_open = false

menu_hovered = 0
menu_options = ["Resume", "Fullscreen:"]
menu_scritps = [menu_resume, menu_fullscreen]