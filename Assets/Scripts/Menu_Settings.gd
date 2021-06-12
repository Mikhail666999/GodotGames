extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	G.menu_settings = self
	pass


func _on_ButtExit_pressed():
	if G.StartSettingsIsStartMenu == 0:
		queue_free()
		G.LoadIsMainMenu("res://Assets/Scene/Main Menu.tscn")
		G.StartSettingsIsStartMenu = null
		
	if G.StartSettingsIsStartMenu == 1:
		queue_free()
		G.LoadIsLavel("res://Assets/Scene/Menu.tscn")
		G.StartSettingsIsStartMenu = null
	pass # Replace with function body.

