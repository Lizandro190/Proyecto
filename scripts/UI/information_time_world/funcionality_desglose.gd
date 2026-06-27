extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var grid = get_parent()
			
			var desglose = grid.get_node("Desglose")
			desglose.flip_v = !desglose.flip_v
			
			var dia_fijo = grid.get_node("DiaFijo")
			var dia = grid.get_node("Dia")
			var dia_vacio = grid.get_node("DiaVacio")
			dia_fijo.visible = !dia_fijo.visible
			dia.visible = !dia.visible
			dia_vacio.visible = !dia_vacio.visible
			
			var estacion_fijo = grid.get_node("EstacionFijo")
			var estacion = grid.get_node("Estacion")
			var estacion_vacio = grid.get_node("EstacionVacio")
			estacion_fijo.visible = !estacion_fijo.visible
			estacion.visible = !estacion.visible
			estacion_vacio.visible  = !estacion_vacio.visible
			
			var clima_fijo = grid.get_node("ClimaFijo")
			var clima = grid.get_node("Clima")
			var clima_vacio = grid.get_node("ClimaVacio")
			clima_fijo.visible = !clima_fijo.visible
			clima.visible = !clima.visible
			clima_vacio.visible  = !clima_vacio.visible
	
