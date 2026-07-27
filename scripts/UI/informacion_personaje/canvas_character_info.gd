class_name CanvasCharacterInfo extends CanvasLayer

@onready var nombre : Label = $PanelContainer/MarginContainer/VBoxContainer/NombreContainer/BoxNombre/Nombre
@onready var cansancio : Label = $PanelContainer/MarginContainer/VBoxContainer/CansancioContainer/BoxCansancio/Cansancio
@onready var felicidad : Label = $PanelContainer/MarginContainer/VBoxContainer/FelicidadContainer/BoxFelicidad/Felicidad
@onready var amor : Label = $PanelContainer/MarginContainer/VBoxContainer/AmorContainer/BoxAmor/Amor
@onready var figura : Label = $PanelContainer/MarginContainer/VBoxContainer/ObjetoContainer/BoxCosaFavorita/CosaFavorita
@onready var control : Label = $PanelContainer/MarginContainer/VBoxContainer/BotonContainer/BotonControl

@onready var control_container : HBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BotonContainer

func _ready() -> void:
	SingleInfo.events.character_selected.connect(show_canvas_information)
	SingleInfo.events.toggle_control_character.connect(update_mode_control)
	
	visible = false

func show_canvas_information():
	if SingleInfo.character_global.is_character_selected():
		visible = true
		if SingleInfo.character_global.character_selected is Colony:
			update_character_information()
	else:
		visible = false
	
func update_character_information():
	var character = SingleInfo.character_global.character_selected
	
	nombre.text = character.identity_information.nombre
	cansancio.text = str(character.physical_information.sleep)
	felicidad.text = str(character.emotional_information.felicidad)
	amor.text = str(character.emotional_information.amor)
	
	update_mode_control()
	
func update_mode_control() -> void:
	if SingleInfo.character_global.is_character_selected():
		var character = SingleInfo.character_global.character_selected
		if character.current_controller.is_managin_by_ia():
			control.text = "Controlar"
		else:
			control.text = "Descontrolar"
		
