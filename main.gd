
extends Node

var _large_icon_texture_2d: Texture2D
var _small_icon_texture_2d: Texture2D
var initialized: bool = false
var singleton


func initialize(largeIcon: String, smallIcon: String):
	_large_icon_texture_2d = load(largeIcon)
	_small_icon_texture_2d = load(smallIcon)
	if Engine.has_singleton("NotificationPlugin"):
		singleton = Engine.get_singleton("NotificationPlugin")
	else:
		printerr("Plugin not found!")
		return false
	initialized = true
	return true
	
func showNotification(title: String, body: String, notification_id: int = 100, channel_id: String = "default", largeIcon: Texture2D = _large_icon_texture_2d, smallIcon: Texture2D = _small_icon_texture_2d):
	if initialized && singleton:
			var img = largeIcon.get_image()
			var data = img.save_png_to_buffer()
			var base_string = Marshalls.raw_to_base64(data)
			
			var s_img = smallIcon.get_image()
			var s_data = s_img.save_png_to_buffer()
			var s_base_string = Marshalls.raw_to_base64(s_data)
			singleton.showNotification(title, body, base_string, s_base_string, notification_id, channel_id)
		
