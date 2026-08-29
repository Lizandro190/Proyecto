class_name CanvasCharacter extends CanvasLayer

@onready var nombre : Label = $PanelContainer/MarginContainer/VBoxContainer/NombreContainer/BoxNombre/Nombre
@onready var cansancio : Label =$PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/VBoxContainer/CansancioContainer/BoxCansancio/Cansancio
@onready var felicidad : Label = $PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/VBoxContainer/FelicidadContainer/BoxFelicidad/Felicidad
@onready var objeto : Label = $PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/VBoxContainer/ObjetoContainer/BoxCosaFavorita/ObjetoFavorito
@onready var amor: Label = $PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/VBoxContainer/AmorContainer/BoxAmor/Amor
@onready var control : Label =$PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/VBoxContainer/ControlContainer/BotonControl

@onready var control_container : HBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/ToggleVisibility/DescripcionContainer

func _ready() -> void:
	SingleInfo.events.character_selected.connect(show_canvas)
	SingleInfo.events.toggle_control_character.connect(update_mode_control)
	
	visible = false

func show_canvas() -> void:
	if SingleInfo.character_global.is_character_selected():
		visible = true
		_update_canvas()
	else:
		visible = false
	
func _update_canvas() -> void:
	if SingleInfo.character_global.character_selected is Colony:
		update_character_information()
		update_mode_control()
	
func update_character_information() -> void:
	var character = SingleInfo.character_global.character_selected
	
	nombre.text = character.identity_information.nombre
	cansancio.text = str(character.physical_information.sleep)
	felicidad.text = str(character.emotional_information.felicidad)
	amor.text = str(character.emotional_information.amor)
	
func update_mode_control() -> void:
	var character = SingleInfo.character_global.character_selected
	
	if character.current_controller.is_managin_by_ia():
		control.text = "Controlar"
	else:
		control.text = "Descontrolar"
		
