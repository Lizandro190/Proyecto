class_name CanvasCharacterInfo extends CanvasLayer

@onready var nombre : Label = $PanelContainer/MarginContainer/VBoxContainer/NombreContainer/BoxNombre/Nombre
@onready var cansancio : Label = $PanelContainer/MarginContainer/VBoxContainer/CansancioContainer/BoxCansancio/Cansancio
@onready var felicidad : Label = $PanelContainer/MarginContainer/VBoxContainer/FelicidadContainer/BoxFelicidad/Felicidad
@onready var amor : Label = $PanelContainer/MarginContainer/VBoxContainer/AmorContainer/BoxAmor/Amor
@onready var figura : Label = $PanelContainer/MarginContainer/VBoxContainer/ObjetoContainer/BoxCosaFavorita/CosaFavorita
@onready var control : Label = $PanelContainer/MarginContainer/VBoxContainer/BotonContainer/BotonControl

@onready var control_container : HBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BotonContainer

func _ready() -> void:
	SingleInfo.events.colono_selected.connect(show_character_information)
	SingleInfo.events.toggle_control_colono.connect(update_mode_control)
	
	visible = false

func show_character_information():
	if SingleInfo.player_global.is_character_selected():
		visible = true
		update_character_information()
	else:
		visible = false
	
func update_character_information():
	var character = SingleInfo.player_global.character_selected.player_info
	
	nombre.text = character.nombre
	cansancio.text = str(character.fatiga)
	felicidad.text = str(character.felicidad)
	amor.text = str(character.amor)
	
	update_mode_control()
	
func update_mode_control() -> void:
	if SingleInfo.player_global.is_character_selected():
		var character = SingleInfo.player_global.character_selected
		
		if character.is_managed_by_ia():
			control.text = "Controlar"
		else:
			control.text = "Descontrolar"
		
