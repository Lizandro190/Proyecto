extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			_girar_desglose()
			_ocultar_container()

func _girar_desglose():
	var HContainer = get_parent()
	var desglose = HContainer.get_node("Desglose")
	desglose.flip_v = !desglose.flip_v

func _ocultar_container():
	var VContainer = get_parent().get_parent()
	var con_toggle_visibility = VContainer.get_node("ContToggleVisibility")
	con_toggle_visibility.visible = !con_toggle_visibility.visible
