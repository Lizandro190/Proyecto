class_name CharacterGlobal extends Node

var character_selected: Character = null

func select_character(character: Character) -> void:
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
	if is_character_selected():
		character_selected.toogle_control()
