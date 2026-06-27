class_name PlayerInfo extends Node

var nombre: String
var apellido: String

var felicidad: int
var fatiga: int
var amor: int

func _ready() -> void:
	nombre = ColecionNombres.get_nombre_aleatorio()
	apellido = ColecionNombres.get_apellido_aleatorio()
	
	fatiga = 0
	felicidad = 0
	amor = 30
		
