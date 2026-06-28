class_name Physic extends Node

func aplicar_fisica(personaje: PersonajePadre, delta: float):
	if personaje.player_ubication.is_in_edificio:
		personaje.velocity.y = 0
		return

	if not personaje.is_on_floor():
		personaje.velocity += personaje.get_gravity() * delta
