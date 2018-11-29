/// @description SETUP ****
target = noone

camera = camera_create()

//configure camera
camera_set_view_size(camera, width, height)
view_set_camera(0, camera)

view_wport[0] = width
view_hport[0] = height
view_visible[0] = true
view_enabled = true

surface_resize(application_surface,width,height)
window_set_size(width,height)
