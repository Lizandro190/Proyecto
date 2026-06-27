class_name EdificioProducion extends EdificioArea

var trabajo_requerido: PlayerWork.WORKS

func _puede_interactuar(personaje: PersonajePadre) -> bool:
	return personaje.player_work.work == trabajo_requerido and personaje.player_state.estado == personaje.player_state.ESTADOS.TRABAJO
	

	
