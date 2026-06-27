extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var canvas_root = get_parent().get_parent().get_parent().get_parent().get_parent()
			canvas_root.visible = !canvas_root.visible
