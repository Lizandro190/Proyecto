extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var grid = get_parent()
			
			var desglose = grid.get_node("Desglose")
			desglose.flip_v = !desglose.flip_v
			
			var fatiga_fijo = grid.get_node("FatigaFijo")
			var fatiga = grid.get_node("Fatiga")
			var fatiga_vacio = grid.get_node("Vacio")
			var fatiga_vacio_dos = grid.get_node("VacioDos")

			fatiga_fijo.visible = !fatiga_fijo.visible
			fatiga.visible = !fatiga.visible
			fatiga_vacio.visible = !fatiga_vacio.visible
			fatiga_vacio_dos.visible = !fatiga_vacio_dos.visible
			
			var felicidad_fijo = grid.get_node("FelicidadFijo")
			var felicidad = grid.get_node("Felicidad")
			var felicidad_vacio = grid.get_node("VacioTres")
			var felicidad_vacio_dos = grid.get_node("VacioCuatro")

			felicidad_fijo.visible = !felicidad_fijo.visible
			felicidad.visible = !felicidad.visible
			felicidad_vacio.visible = !felicidad_vacio.visible
			felicidad_vacio_dos.visible = !felicidad_vacio_dos.visible
			
			var amor_fijo = grid.get_node("AmorFijo")
			var amor = grid.get_node("Amor")
			var amor_vacio = grid.get_node("VacioCinco")
			var amor_vacio_dos = grid.get_node("VacioSeis")

			amor_fijo.visible = !amor_fijo.visible
			amor.visible = !amor.visible
			amor_vacio.visible = !amor_vacio.visible
			amor_vacio_dos.visible = !amor_vacio_dos.visible
			
			var control_vacio = grid.get_node("VacioSiete")
			var control = grid.get_node("BotonControl")
			var control_vacio_dos = grid.get_node("VacioOcho")
			var control_vacio_tres = grid.get_node("VacioNueve")

			control_vacio.visible = !control_vacio.visible
			control.visible = !control.visible
			control_vacio_dos.visible = !control_vacio_dos.visible
			control_vacio_tres.visible = !control_vacio_tres.visible
