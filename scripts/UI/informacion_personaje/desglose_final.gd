extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var root_container = get_parent().get_parent()
			var toogle_visibility = root_container.get_node("ToggleVisibility")
			toogle_visibility.visible = !toogle_visibility.visible
			
			
			
			
