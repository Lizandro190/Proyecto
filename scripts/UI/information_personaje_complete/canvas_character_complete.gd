class_name CanvasCharacterDescription extends CanvasLayer

@onready var nombre_completo : Label = $PanelContainer/MarginContainer/VBoxContainer/BoxNombreCompleto/NombreBox/NombreCompleto

func _ready() -> void:
	SingleInfo.events.toggle_description_character.connect(show_character_information)
	visible = false

func show_character_information():
	if SingleInfo.player_global.is_character_selected():
		visible = true
		update_character_information()
	else:
		visible = false

func update_character_information() -> void:
	var character = SingleInfo.player_global.character_selected
	nombre_completo.text =  character.personal_information.nombre + " " + character.personal_information.apellido
