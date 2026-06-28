class_name PlayerGlobal extends Node

var character_selected: PersonajePadre = null

func asignar_personaje(character: PersonajePadre) -> void:
	if character == character_selected:
		character_selected.deseleccionar()
		character_selected = null
		return

	if character_selected != null:
		character_selected.deseleccionar()

	character_selected = character
	character_selected.seleccionar()

func is_character_selected() -> bool:
	return character_selected != null

func toggle_control() -> void:
	if character_selected:
		if character_selected.is_managed_by_ia():
			character_selected.active_controller = character_selected.user_controller
		else:
			character_selected.active_controller = character_selected.ai_controller
