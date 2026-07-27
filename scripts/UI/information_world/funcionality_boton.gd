extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var grid = get_parent()
			
			var desglose = grid.get_node("Desglose")
			desglose.flip_h = !desglose.flip_h
			
			var madera_box = grid.get_node("MaderaBox")
			madera_box.visible = !madera_box.visible
			
			var piedra_box = grid.get_node("PiedraBox")
			piedra_box.visible = !piedra_box.visible
			
			var comida_box = grid.get_node("ComidaBox")
			comida_box.visible = !comida_box.visible
