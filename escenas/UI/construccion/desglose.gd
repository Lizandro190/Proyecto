extends TextureRect

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var HContainer = get_parent()
			var VContainer = get_parent().get_parent()
			
			var desglose = HContainer.get_node("Desglose")
			desglose.flip_v = !desglose.flip_v
			
			var cansancio_container = VContainer.get_node("CansancioContainer")
			cansancio_container.visible = !cansancio_container.visible
			
			var felicidad_container = VContainer.get_node("FelicidadContainer")
			felicidad_container.visible = !felicidad_container.visible
			
			var amor_container = VContainer.get_node("AmorContainer")
			amor_container.visible = !amor_container.visible
			
			var objeto_container = VContainer.get_node("ObjetoContainer")
			objeto_container.visible = !objeto_container.visible
			
			var descripcion_container = VContainer.get_node("DescripcionContainer")
			descripcion_container.visible = !descripcion_container.visible
			
			var boton_container = VContainer.get_node("BotonContainer")
			boton_container.visible = !boton_container.visible
