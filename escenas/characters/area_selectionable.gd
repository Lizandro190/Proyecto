class_name AreaSelectionable extends Area2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	var character = owner
	if event is InputEventMouseButton:
		if (event.button_index == MOUSE_BUTTON_LEFT and event.pressed) and !Input.is_action_pressed("ui_e"):
			SingleInfo.character_global.select_character(character)
			SingleInfo.events.character_selected.emit()
