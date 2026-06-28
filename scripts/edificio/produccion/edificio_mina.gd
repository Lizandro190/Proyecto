class_name EdificioMina extends EdificioProducion

func _ready() -> void:
	nombre_edificio = "edificio mina"
	trabajo_requerido = PlayerWork.WORKS.MINERO
	capacidad_de_personas = 3
	
	
