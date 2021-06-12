extends Control


func _ready():
	G.main_menu = self
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass


func _on_Start_pressed():
	get_tree().change_scene("res://Assets/Scene/Lavel0.tscn")
	pass # Replace with function body.


func _on_Settings_pressed():
	G.StartSettingsIsStartMenu = 0
	G.LoadIsMainMenu("res://Assets/Scene/Menu_Settings.tscn")
	pass # Replace with function body.


func _on_Avtor_Doc_pressed():
	#Нету
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.

