class_name EdificioArea extends Area2D

var nombre_edificio: String
var tipo_producion: String
var capacidad_de_personas: int
var capacidad_producion : int
var is_apilable: bool

func _puede_interactuar(personaje: PersonajePadre) -> bool:
	return false

func interactuar(personaje: PersonajePadre) -> void:
	pass
