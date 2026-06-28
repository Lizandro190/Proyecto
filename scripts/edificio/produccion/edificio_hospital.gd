class_name EdificioHospital extends EdificioProducion

func _ready() -> void:
	nombre_edificio = "edificio hospital"
	trabajo_requerido = PlayerWork.WORKS.DOCTOR
	capacidad_de_personas = 2
