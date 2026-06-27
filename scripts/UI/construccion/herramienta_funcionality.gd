extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			SingleInfo.world_state.modo_construccion = !SingleInfo.world_state.modo_construccion
			SingleInfo.events.toggle_mode_construction.emit()
