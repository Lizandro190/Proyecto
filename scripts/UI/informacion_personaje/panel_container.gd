extends PanelContainer

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			var canvas_root = owner
			canvas_root.visible = !canvas_root.visible
