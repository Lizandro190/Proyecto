class_name EdificioMadera extends EdificioProducion

func _ready() -> void:
	nombre_edificio = "edificio madera"
	tipo_producion = "madera"
	trabajo_requerido = PlayerWork.WORKS.TALADOR
	capacidad_producion = 3
	capacidad_de_personas = 2 
	
func interactuar(personaje: PersonajePadre) -> void:
	if !_puede_interactuar(personaje):
		pass
	SingleInfo.production_global.numero_madera += capacidad_producion
