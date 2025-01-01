extends Node

var _large_icon_texture_2d: Texture2D
var _small_icon_texture_2d: Texture2D
var initialized: bool = false
var singleton


func initialize(largeIcon: String, smallIcon: String, notificationMessages: Array = [], hours: int = 12):
	if Engine.has_singleton("NotificationPlugin"):
		singleton = Engine.get_singleton("NotificationPlugin")
		_large_icon_texture_2d = load(largeIcon)
		_small_icon_texture_2d = load(smallIcon)
		initialized = true
		var img = _large_icon_texture_2d.get_image()
		var data = img.save_png_to_buffer()
		var base_string = Marshalls.raw_to_base64(data)
		
		var s_img = _small_icon_texture_2d.get_image()
		var s_data = s_img.save_png_to_buffer()
		var s_base_string = Marshalls.raw_to_base64(s_data)
		
		singleton.initialize(base_string, s_base_string, "", str(hours))
		
		for i in notificationMessages:
			singleton.addContent(i)
			
	else:
		printerr("NotificationPlugin plugin not found!")

# for showing notification during runtime.
func showNotification(title: String, body: String, notification_id: int = 100, channel_id: String = "default"):
	if initialized && singleton:
		singleton.showNotification(title, body, channel_id, notification_id)
		
