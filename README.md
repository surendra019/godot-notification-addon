# Introduction
An Android plugin for notifications in Godot 4.x

# Steps to use:

1. Rename the root folder to ```NotificationPlugin```
2. Move the root folder to your project's ```res://addons/```
3. Add the ```NotificationManager``` node to your scene
4. Call ```NotificationManager.initialize()``` to initialize the icons for the notification. Pass the first argument as the path of the large icon and the second as the path of the small icon.
5. Call ```NotificationManager.showNotification()``` to show the notification. It takes the following arguments:
     a. title <- String  [The title of the notification]
     b. body <- String [The body of the notification]
     c. notification_id <- int [id of a notification] (default - 100)
     d. channel_id <- String [channel id to categorize notifications] (default - "default")
     e. largeIcon <- Texture2D [custom large icon for specific notification] (default - the initialized icon)
     f. smallIcon <- Texture2D [custom small icon for specific notification] (default - the initialized icon)

# Note
The ```NotificationManager``` must be initialized once before showing any notifications
