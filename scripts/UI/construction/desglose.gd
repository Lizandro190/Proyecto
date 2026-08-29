extends AspectRatioContainer

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var container = self.get_parent().get_parent()
			var desglose = container.get_node("ToggleContainer")
			desglose.visible = !desglose.visible
			
