# Introduction
An Android plugin for notifications in Godot 4.x.

# Steps to use:

1. Rename the root folder to ```NotificationPlugin```
2. Enable the plugin from the ```Plugin``` tab in the Project Settings
3. Move the root folder to your project's ```res://addons/```
4. Add the ```NotificationManager``` node to your scene
5. Call ```NotificationManager.initialize()``` to initialize the icons for the notification. Pass the first argument as the path of the large icon and the second as the path of the small icon
6. Call ```NotificationManager.showNotification()``` to show the notification. It takes the following arguments:<br>
          a. title <- String  [The title of the notification]<br>
          b. body <- String [The body of the notification]<br>
          c. notification_id <- int [id of a notification] (default - 100)<br>
          d. channel_id <- String [channel id to categorize notifications] (default - "default")<br>
          e. largeIcon <- Texture2D [custom large icon for specific notification] (default - the initialized icon)<br>
          f. smallIcon <- Texture2D [custom small icon for specific notification] (default - the initialized icon)<br>

# Note
The ```NotificationManager``` must be initialized once before showing any notifications.
