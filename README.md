# Godot Android Notification Plugin

A powerful and easy-to-use plugin for adding notifications to your Godot 4.3 Android projects. This plugin enables both runtime and periodic notifications, even when the app is closed.

## Features

1. **Runtime Notifications**: Send notifications instantly while the app is running.
2. **Periodic Notifications**: Schedule notifications to appear at regular intervals, even when the app is closed.
3. **Easy to Use**: Straightforward setup and functionality.
4. **Manual Notification Icons**: Customize your notification icons with your assets.
5. **Godot 4.3 Support**: Fully compatible with Godot 4.3.

---

## How to Use

### 1. Setup
- Download the plugin release from the repository.
- Paste it into the `addons` folder of your Godot project.
- Enable the plugin from **Project Settings**.

### 2. Add Notification Manager
- Add the `NotificationManager` node to the first scene of your game.

### 3. Initialize the Plugin
Call the `initialize()` function once in your script. It accepts the following parameters:
1. **`largeIcon`**: The path to the large icon of the notification (`res://` format).
2. **`smallIcon`**: The path to the small icon of the notification (`res://` format).
3. **`notificationMessages`**: An array of messages for periodic notifications (a random message will be shown).
4. **`hours`** *(optional)*: The interval for periodic notifications in hours. Default is `12`.

   <img src="https://github.com/surendra019/godot-notification-addon/blob/main/Screenshot%202024-12-31%20214806.png"/>

**Example:**
```gdscript
$NotificationManager.initialize("res://icons/large_icon.png", "res://icons/small_icon.png", ["Hello!", "Reminder!", "Check this out!"], 6)
