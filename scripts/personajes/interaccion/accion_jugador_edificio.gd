extends Area2D

func _on_area_entered(area: Area2D) -> void:
	var personaje = get_parent()

	if area is EdificioArea:
		personaje.player_ubication.edificio_actual = area
		personaje.player_ubication.is_in_edificio = true
	
func _on_area_exited(area: Area2D) -> void:
	var personaje = get_parent()

	if area == personaje.player_ubication.edificio_actual:
		personaje.player_ubication.edificio_actual = null
		personaje.player_ubication.is_in_edificio = false
