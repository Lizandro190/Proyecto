class_name Main extends Node2D

@onready var game_manager: GameManager = $GameManager

@onready var camara_controller: Node2D = $CamaraController

func _ready():
	DisplayServer.window_set_flag(
		DisplayServer.WINDOW_FLAG_MAXIMIZE_DISABLED,
		true
	)

func _unhandled_input(event):
	if event.is_action_pressed("toggle_fullscreen"):
		toggle_fullscreen()
		
func toggle_fullscreen():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
