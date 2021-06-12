extends Node

var player = null
var game = null
var main_menu = null
var menu = null
var menu_settings = null

var Lavel = null
var StartSettingsIsStartMenu = null# 0 если из Главного Меню, 1 если из Меню

func _ready():
	OS.center_window()
	pass

func pause(s=1):
	get_tree().paused = bool(s)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if !s else Input.MOUSE_MODE_VISIBLE)
	pass

func LoadIsLavel(name_scene): #Когда загрузка из игры
	var n = load(name_scene).instance()
	game.add_child(n)
	pass

func LoadIsMainMenu(name_scene): #Когда загрузка из главного меню
	var n = load(name_scene).instance()
	main_menu.add_child(n)
	pass

func LoadIsMenu(name_scene): #Когда загрузка из меню
	var n = load(name_scene).instance()
	menu.add_child(n)
	pass

func LoadIsMenuSettings(name_scene): #Когда загрузка из меню настроек
	var n = load(name_scene).instance()
	main_menu.add_child(n)
	pass
