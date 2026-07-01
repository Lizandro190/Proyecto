extends PanelContainer

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			var cont_toggle = get_node("MarginContainer/VBoxContainer/ContToggleVisibility")
			if cont_toggle.visible == false:
				pass
			else:
				cont_toggle.visible = false
