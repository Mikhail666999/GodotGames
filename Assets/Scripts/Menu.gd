extends Control


func _ready():
	G.menu = self
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		queue_free()
		G.pause(0)
	pass


func _on_Resume_pressed():
	queue_free()
	G.pause(0)
	pass # Replace with function body.


func _on_Restart_pressed():
	queue_free()
	get_tree().change_scene("res://Assets/Scene/Lavel0.tscn")
	pass # Replace with function body.


func _on_Settings_pressed():
	queue_free()
	G.StartSettingsIsStartMenu = 1
	G.LoadIsLavel("res://Assets/Scene/Menu_Settings.tscn")
	pass # Replace with function body.


func _on_Main_Menu_pressed():
	get_tree().change_scene("res://Assets/Scene/Main Menu.tscn")
	pass # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
	pass # Replace with function body.

