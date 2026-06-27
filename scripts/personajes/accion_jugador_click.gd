extends Area2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var personaje = owner
			SingleInfo.player_global.asignar_personaje(personaje)
			SingleInfo.events.colono_selected.emit()
